package charleywong.entities;

class Youngspiration implements Entity {
    public final id = "youngspiration";
    public final name = [
        zh => "青年新政"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://youngspiration.hk"
        },
        {
            url: "https://www.facebook.com/youngspiration/",
            meta: [
                "id" => "754643994627238",
                "about" => "青年新政將會以「公平公義，港人本位」為大原則，提出政策建議及走入社區服務市民，憑此實踐我們的核心理念。",
                "categories" => [
                    "Political organisation"
                ],
                "email" => "info@youngspiration.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/youngspiration/photos/a.763112140447090/2420252411399713/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

