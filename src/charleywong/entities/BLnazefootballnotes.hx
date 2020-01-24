package charleywong.entities;

class BLnazefootballnotes implements Entity {
    public final id = "BLnazefootballnotes";
    public final name = [
        zh => "BLnaze的足球札記"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BLnazefootballnotes/",
            meta: [
                "id" => "222447204894751",
                "about" => "Just about Football。",
                "categories" => [
                    "Sports"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BLnazefootballnotes/posts/756063834866416"
        }
    ];
}

