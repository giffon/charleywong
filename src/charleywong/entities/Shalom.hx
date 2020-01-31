package charleywong.entities;

class Shalom implements Entity {
    public final id = "Shalom";
    public final name = [
        en => "Shalom",
        zh => "嚐樂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.openrice.com/restaurant/sr2.htm?shopid=49389&tc=sr1"
        },
        {
            url: "https://www.facebook.com/193814243963164/",
            meta: [
                "about" => "Shalom - taste the happiness",
                "categories" => [
                    "Dessert shop"
                ],
                "email" => "shalom2010@hotmail.com",
                "tel" => "23821989",
                "id" => "193814243963164"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=2975736089104285&id=193814243963164"
        },
        {
            url: "https://www.facebook.com/193814243963164/photos/a.2854165274594701/2854161147928447/"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=2821990481145514&id=193814243963164"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

