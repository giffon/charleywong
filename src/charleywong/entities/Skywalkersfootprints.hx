package charleywong.entities;

class Skywalkersfootprints implements Entity {
    public final id = "skywalkersfootprints";
    public final name = [
        zh => "天行足跡"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/skywalkersfootprints/",
            meta: [
                "about" => "分享香港山野之美、探路心得，提倡環境保育。\n\n關於作者：http://www.skywalker.autozine.org/intro.html",
                "categories" => [
                    "Blogger"
                ],
                "id" => "1190895447687661"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/skywalkersfootprints/photos/a.1214516908658848/2151662971610899/"
        },
        {
            url: "https://www.facebook.com/skywalkersfootprints/posts/2362602003850327"
        }
    ];
}

