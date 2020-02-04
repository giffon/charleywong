package charleywong.entities;

class Hellojoking implements Entity {
    public final id = "hellojoking";
    public final name = [
        zh => "林國慶翻轉文字"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hellojoking/",
            meta: [
                "id" => "141679813313677",
                "about" => "十年前興起設計HELLO TAIWAN翻轉文字；2015年各大媒體大量報導。\n透過翻轉文字將台灣各地的地名溯源，期盼讓外國朋友來台灣、台灣人去外國，用[魔學文字]，將台灣歷史文化行銷到全世界！",
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hellojoking/posts/440986160049706"
        },
        {
            url: "https://www.facebook.com/hellojoking/posts/598298587651795"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

