package charleywong;

import CrossFetch.fetch;
import js.lib.Promise;
import js.node.Buffer;
import haxe.io.Path;
import sys.FileSystem;
import sys.io.File;
using charleywong.PromiseTools;
using StringTools;
using Lambda;

/**
    Generates the entity profile pics (`dist/img/:entityId/profile.png`),
    which are served by a separate assets-only Worker (`img/wrangler.jsonc`)
    because the main site is close to the 20,000 files limit of Workers static assets.

    node profilePic.js [--from https://img.charleywong.info] [--force] [entityId ...]

    --from: download the existing pics from the deployed site instead of re-rendering them.
    --force: re-render all pics (e.g. to pick up profile pic changes).
**/
class ProfilePicMain {
    static final outDir = "dist/img";
    static final concurrency = 8;

    static function picFile(id:String):String {
        return Path.join([outDir, Site.profilePicPath(id)]);
    }

    static function save(file:String, buf:Buffer):Void {
        final dir = Path.directory(file);
        if (!FileSystem.exists(dir))
            FileSystem.createDirectory(dir);
        js.node.Fs.writeFileSync(file, buf);
    }

    static function download(from:String, id:String):Promise<Bool> {
        return fetch(from + Site.profilePicPath(id))
            .then(r -> if (r.ok && r.headers.get("Content-Type") == "image/png") {
                r.arrayBuffer().then(ab -> {
                    save(picFile(id), Buffer.from(ab));
                    true;
                });
            } else {
                Promise.resolve(false);
            })
            .catchError(_ -> false);
    }

    static function render(entity:Entity):Promise<Any> {
        return ProfilePic.render(entity)
            .then(buf -> save(picFile(entity.id), buf))
            .catchError(err -> {
                trace('Failed to render the profile pic of ${entity.id}: $err');
                null;
            });
    }

    static function main():Void {
        var from:Null<String> = null;
        var force = false;
        final ids = [];
        final args = Sys.args();
        var i = 0;
        while (i < args.length) {
            switch (args[i]) {
                case "--from":
                    from = args[++i];
                case "--force":
                    force = true;
                case id:
                    ids.push(id);
            }
            i++;
        }

        final entityIndex = EntityIndex.loadFromDirectory(ServerMain.dataDirectory);
        final entities = [
            for (e in entityIndex.entities)
            if (!e.tags.has("removed") && (ids.length == 0 || ids.has(e.id)))
            if (force || !FileSystem.exists(picFile(e.id)))
            e
        ];
        entities.sort((a, b) -> Reflect.compare(a.id, b.id));
        Sys.println('${entities.length} profile pics to generate');

        if (!FileSystem.exists(outDir))
            FileSystem.createDirectory(outDir);
        File.saveContent(Path.join([outDir, "_headers"]), [
            "/*",
            "  Access-Control-Allow-Origin: *",
            "  Cache-Control: public, max-age=86400, stale-while-revalidate=604800", // max-age: 1 day, stale-while-revalidate: 7 days
        ].join("\n") + "\n");

        var done = 0;
        function generate(e:Entity):Promise<Any> {
            final downloaded = if (from != null && !force) download(from, e.id) else Promise.resolve(false);
            return downloaded
                .then(ok -> ok ? null : render(e))
                .then(_ -> {
                    done++;
                    if (done % 100 == 0)
                        Sys.println('${done}/${entities.length}');
                    null;
                });
        }
        // a few workers pulling from the same queue
        final queue = entities.copy();
        function work():Promise<Any> {
            return switch (queue.shift()) {
                case null: Promise.resolve(null);
                case e: generate(e).then(_ -> work());
            }
        }
        Promise.all([for (_ in 0...concurrency) work()])
            .then(_ -> Sys.println('Generated ${done} profile pics in ${outDir}'));
    }
}
