package charleywong;

#if js
import js.Node;
import js.node.*;
#else
import sys.io.*;
#end
import haxe.DynamicAccess;
import haxe.Json;

class Git {
    public final config:{
        ?user:{
            name:String,
            email:String,
        },
    };

    public function new(?config) {
        this.config = config != null ? config : {};
    }

    public function run(args:Array<String>):String {
        #if js
        switch (ChildProcess.spawnSync("git", args, {
            env: {
                switch (config.user) {
                    case null:
                        Node.process.env;
                    case {name: name, email: email}:
                        var env = Node.process.env.copy();
                        env["GIT_COMMITTER_NAME"] = name;
                        env["GIT_COMMITTER_EMAIL"] = email;
                        env;
                }
            },
            encoding: 'utf8',
        })) {
            case {status: status, error: error} if (status != 0):
                throw error;
            case {stdout: stdout}:
                return stdout;
        }
        #else
        switch (config.user) {
            case null:
                //pass
            case {name: name, email: email}:
                Sys.putEnv("GIT_COMMITTER_NAME", name);
                Sys.putEnv("GIT_COMMITTER_EMAIL", email);
        }
        var p = new Process("git", args);
        var out = p.stdout.readAll().toString();
        if (p.exitCode() != 0) {
            var err = p.stderr.readAll().toString();
            p.close();
            throw err;
        } else {
            p.close();
        }
        return out;
        #end
    }

    public function lastUpdateTimestamp(file:String):Float {
        return Std.parseFloat(run(["log", "-n", "1", "--pretty=format:%ct", "--", file]));
    }

    public function commit(message:String, ?opts:{
        ?author:String,
        ?gpgSign:String
    }):Void {
        var args = ["commit", "--all", "-m", message];

        if (opts != null && opts.author != null)
            args.push('--author=${opts.author}');
        else switch (config.user) {
            case null:
                //pass
            case {name: name, email: email}:
                args.push('--author=${name} <$email>');
        }

        if (opts != null && opts.gpgSign != null)
            args.push('--gpg-sign=$opts.gpgSign');

        run(args);
    }

    public function push(repo:String, ref:String):Void {
        run(["push", repo, ref]);
    }
}