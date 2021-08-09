package charleywong;

#if js
import js.Lib.*;
import js.npm.flexsearch.FlexSearch;
import js.npm.nodejieba.Nodejieba;
import js.npm.pluralize.Pluralize;
import nroonga.Database;
#end
import sys.*;
import sys.io.*;
import haxe.ds.*;
import haxe.io.*;
import haxe.Json;
using Lambda;
using StringTools;
using charleywong.EntityTools;

class EntityIndex {
    public final entities:Map<String, Entity>;
    public final serializedIndex:Null<String>;
    public function new(entities:Map<String, Entity>, ?serializedIndex:String):Void {
        this.entities = entities;
        this.serializedIndex = serializedIndex;
    }

    public function invalidate():Void {
        entitiesOfUrl = null;
        entitiesOfFbPage = null;
        entitiesOfId = null;
        #if js
        flexsearch = null;
        #end
    }

    static public function loadFromDirectory(path:String, ?serializedIndexPath:String):EntityIndex {
        var entities = new Map();
        for (item in FileSystem.readDirectory(path)) {
            if (!item.endsWith(".json")) continue;

            var file = Path.join([path, item]);
            entities[file] = try {
                haxe.Json.parse(File.getContent(file));
            } catch(e:Dynamic) {
                throw 'Error loading $file';
            }
        }
        return new EntityIndex(
            entities,
            if (serializedIndexPath != null) try {
                File.getContent(serializedIndexPath);
            } catch (e:Dynamic) {
                trace(e);
                null;
            } else {
                null;
            }
        );
    }

    macro static public function embedFromDirectory(path:String):ExprOf<EntityIndex> {
        var exprs = [
            for (item in FileSystem.readDirectory(path))
            if (item.endsWith(".json"))
            {
                var file = Path.join([path, item]);
                var content = File.getContent(file);
                macro $v{file} => Entity.fromJson(haxe.Json.parse($v{content}));
            }
        ];
        return macro new EntityIndex([$a{exprs}]);
    }

    public var entitiesOfUrl(get, null):Map<String, Entity>;
    function get_entitiesOfUrl() return entitiesOfUrl != null ? entitiesOfUrl : entitiesOfUrl = [
        for (e in entities)
        for (page in e.webpages)
        page.url => e
    ];

    final fbPageRegexp = ~/^https:\/\/www\.facebook\.com\/(.+?)\/$/;

    public var entitiesOfFbPage(get, null):Map<String, Entity>;
    function get_entitiesOfFbPage() return entitiesOfFbPage != null ? entitiesOfFbPage : entitiesOfFbPage = {
        var m = new Map();
        for (e in entities)
        for (p in e.webpages)
        if (fbPageRegexp.match(p.url))
        {
            m[fbPageRegexp.matched(1)] = e;
            if (p.meta != null) {
                switch (p.meta["id"]) {
                    case null: //pass
                    case id: m[id] = e;
                }
                switch (p.meta["username"]) {
                    case null: //pass
                    case username: m[username] = e;
                }
            }
        }
        m;
    }

    public var entitiesOfId(get, null):Map<String, Entity>;
    function get_entitiesOfId() return entitiesOfId != null ? entitiesOfId : entitiesOfId = {
        var m = [
            for (e in entities)
            e.id => e
        ];

        //alias
        for (e in entities)
        if (e.alias != null)
        for (id in e.alias)
        {
            m[id] = e;
        }

        m;
    }

    public var entitiesOfHkbase(get, null):Array<Entity>;
    function get_entitiesOfHkbase()
        return entitiesOfHkbase != null ? entitiesOfHkbase : entitiesOfHkbase = entities.filter(e -> e.tags.exists(t -> t.id == "hkbaseDirectory"));

    #if js
    final emojiRegexp = ~/(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])/g;
    final mixedChiEngSep = ~/(?:[\s\-\/]+|(?=[\u4e00-\u9fff])|(?<=[\u4e00-\u9fff]))/g;
    static public final chiRegexp = ~/[\u4e00-\u9fff]/;
    public var flexsearch(get, null):FlexSearch;
    function get_flexsearch() return flexsearch != null ? flexsearch : flexsearch = {
        function tokenize(str:String) {
            return ~/[\s\-\/]+/g
                .split(emojiRegexp.replace(str, " "))
                .map(str -> chiRegexp.match(str) ? Nodejieba.cutForSearch(str, false) : [str])
                .fold((a1, a2) -> a1.concat(a2), [])
                .map(Pluralize.singular);
        }
        var f = FlexSearch.create({
            profile: "match",
            cache: 1000,
            doc: {
                id: "id",
                field: {
                    "id": {},
                    "name:en": {
                        tokenize: "full",
                        encode: "advanced",
                    },
                    "name:zh": {
                        tokenize: function(str:String) {
                            return mixedChiEngSep.split(str);
                        },
                        encode: "icase",
                    },
                    "tag:names": {
                        tokenize: tokenize,
                    },
                    "tag:ids": {},
                    "meta": {
                        tokenize: tokenize,
                    },
                    "hkbase": {
                        tokenize: tokenize,
                    }
                },
            },
            store: "id",
        });
        if (serializedIndex != null) {
            f._import(serializedIndex);
        } else {
            f.add(entities.filter(e -> e.searchable()).map(e -> {
                id: e.id,
                name: {
                    en: e.name[en],
                    zh: e.name[zh],
                    zhchar: e.name[zh],
                },
                tag: {
                    var tags = Tag.expend(e.tags);
                    {
                        names: tags.map(t -> [for (v in t.name) v].join("\n")).join("\n"),
                        ids: tags.map(t -> t.id),
                    }
                },
                meta: e.webpages.map(p -> switch (p.meta) {
                    case null: "";
                    case m:
                        (switch (m["name"]) {
                            case null: "";
                            case name: name;
                        }) + "\n" +
                        (switch (m["about"]) {
                            case null: "";
                            case about: about;
                        });
                }).join("\n"),
                hkbase: switch (HkbaseDirectory.getData(e)) {
                    case null: "";
                    case d:
                        d.name_en + "\n" +
                        d.name_zh + "\n" +
                        d.type + "\n" +
                        d.description;
                }
            }));
        }
        f;
    };

    #if export_flexsearch
    static function main():Void {
        if (FileSystem.exists(ServerMain.exportedFlexsearch)) {
            Sys.println('${ServerMain.exportedFlexsearch} already exists, remove it first?');
            return;
        }
        var exported = ServerMain.entityIndex.flexsearch.export();
        File.saveContent(ServerMain.exportedFlexsearch, exported);
    }
    #end

    public var groonga(get, null):Database;
    public final groongaDb = "data/groonga/groonga_db";
    function get_groonga() return groonga != null ? groonga : groonga = {
        var dbExists = sys.FileSystem.exists(groongaDb);
        trace('${groongaDb} exists? ' + dbExists);
        var db = try {
            new Database(groongaDb, dbExists);
        } catch (e) {
            trace(e);
            var tmpDb = "/tmp/groonga/groonga_db";
            Sys.command("cp", ["-rf", Path.directory(groongaDb), Path.directory(tmpDb)]);
            new Database(tmpDb, dbExists);
        }
        trace("created Database");
        if (!dbExists) {
            db.commandSync("plugin_register token_filters/stem");

            db.commandSync("table_create", {
                name: "Entity",
                flags: "TABLE_HASH_KEY",
                key_type: "ShortText",
            });
            db.commandSync('column_create', {
                table: 'Entity',
                name: 'name',
                flags: 'COLUMN_SCALAR',
                type: 'ShortText'
            });
            db.commandSync('column_create', {
                table: 'Entity',
                name: 'meta',
                flags: 'COLUMN_SCALAR',
                type: 'Text'
            });
            db.commandSync('column_create', {
                table: 'Entity',
                name: 'tags',
                flags: 'COLUMN_VECTOR',
                type: 'ShortText'
            });
            
            db.commandSync("table_create", {
                name: "Terms",
                flags: "TABLE_PAT_KEY",
                key_type: "ShortText",
                default_tokenizer: "TokenBigramIgnoreBlankSplitSymbol",
                normalizer: "NormalizerAuto",
                token_filters: "TokenFilterStem",
            });
            db.commandSync('column_create', {
                table: 'Terms',
                name: 'name',
                flags: 'COLUMN_INDEX|WITH_POSITION',
                type: 'Entity',
                source: 'name',
            });
            db.commandSync('column_create', {
                table: 'Terms',
                name: 'meta',
                flags: 'COLUMN_INDEX|WITH_POSITION',
                type: 'Entity',
                source: 'meta',
            });
            db.commandSync('column_create', {
                table: 'Terms',
                name: 'tags',
                flags: 'COLUMN_INDEX|WITH_POSITION|WITH_SECTION',
                type: 'Entity',
                source: 'tags',
            });

            db.commandSync("load", {
                table: "Entity",
                values: Json.stringify([
                    for (_ => e in entities)
                    {
                        _key: e.id,
                        name: e.name.printAll(),
                        meta:
                            e.webpages.map(p -> switch (p.meta) {
                                case null: "";
                                case m:
                                    (switch (m["name"]) {
                                        case null: "";
                                        case name: name;
                                    }) + "\n" +
                                    (switch (m["about"]) {
                                        case null: "";
                                        case about: about;
                                    });
                            }).join("\n")
                            +
                            switch (HkbaseDirectory.getData(e)) {
                                case null: "";
                                case d:
                                    d.name_en + "\n" +
                                    d.name_zh + "\n" +
                                    d.type + "\n" +
                                    d.description;
                            },
                        tags: [
                            for (t in Tag.expend(e.tags))
                            for (v in t.name)
                            v
                        ],
                    }
                ]),
            });
        }
        db;
    }
    #end
}