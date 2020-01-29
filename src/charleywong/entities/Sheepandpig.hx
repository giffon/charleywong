package charleywong.entities;

class Sheepandpig implements Entity {
    public final id = "sheepandpig";
    public final name = [
        en => "Sheep and Pig",
        zh => "叁嘗"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sheepandpig/",
            meta: [
                "categories" => [
                    "Japanese restaurant",
                    "Diner"
                ],
                "addr" => "天后歌頓道1A號DIVA地下1號舖",
                "area" => "North Point",
                "id" => "2270942479860435"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sheepandpig/photos/a.2275081882779828/2420195858268429/"
        }
    ];
    public final tags:Array<Tag> = [];
}

