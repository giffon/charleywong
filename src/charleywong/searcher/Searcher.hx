package charleywong.searcher;

import haxe.*;
import python.*;
import python.lib.Json as PyJson;

@:pythonImport("googleapiclient.discovery")
extern class Discovery {
    static public function build(service:String, version:String, ?opts:KwArgs<Dynamic>):Dynamic;
}

typedef CustomSearchListArgs = {
    q:String,
    ?dateRestrict:Dynamic,
    ?hl:Dynamic,
    ?orTerms:Dynamic,
    ?highRange:Dynamic,
    ?num:Dynamic,
    ?cr:Dynamic,
    ?imgType:Dynamic,
    ?relatedSite:Dynamic,
    ?filter:Dynamic,
    ?gl:Dynamic,
    ?searchType:Dynamic,
    ?fileType:Dynamic,
    ?start:Dynamic,
    ?imgDominantColor:Dynamic,
    ?lr:Dynamic,
    ?siteSearch:Dynamic,
    ?sort:Dynamic,
    ?hq:Dynamic,
    ?c2coff:Dynamic,
    ?googlehost:Dynamic,
    ?safe:Dynamic,
    ?exactTerms:Dynamic,
    ?lowRange:Dynamic,
    ?imgSize:Dynamic,
    ?imgColorType:Dynamic,
    ?rights:Dynamic,
    ?excludeTerms:Dynamic,
    ?linkSite:Dynamic,
    ?cx:Dynamic,
    ?siteSearchFilter:Dynamic,
};

extern class CustomSearchService {
    public function cse():{
        public function list(?opts:KwArgs<CustomSearchListArgs>):HttpRequest;
    };
}

extern class HttpRequest {
    public function execute():Dict<String,Dynamic>;
}

class Searcher {
    static final customsearchApiKey = Sys.getEnv("CUSTOMSEARCH_API_KEY");
    static function getAllItems(opts:CustomSearchListArgs) {
        var service:CustomSearchService = Discovery.build("customsearch", "v1", {
            developerKey: customsearchApiKey,
        });
        var cx = service.cse();

        var items = [];
        opts.start = 0;
        do {
            var r = cx.list(opts).execute();
            items = items.concat(r.get("items"));
            opts.start = switch (r.get("queries").get("nextPage"):Array<Dynamic>) {
                case null | []: break;
                case [nextPage]: nextPage.get("startIndex");
                case nextPage:
                    trace(nextPage);
                    break;
            }
        } while(opts.start <= 100);

        return items;
    }
    static function main():Void {
        var items = getAllItems({
            q: "三罷",
            cx: "006471031179724610619:ntgzxgffaoq",
            sort: "date:r:20190601:20200101",
        });
        Sys.println(Json.stringify(items, (k, v) -> if (Std.is(v, Dict)) Lib.dictAsAnon(v) else v, "  "));
    }
}