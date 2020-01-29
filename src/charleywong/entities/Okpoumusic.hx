package charleywong.entities;

class Okpoumusic implements Entity {
    public final id = "okpoumusic";
    public final name = [
        en => "OKPOU Music",
        zh => "香港樂舖"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://OKPOU.com"
        },
        {
            url: "https://www.facebook.com/okpoumusic/",
            meta: [
                "id" => "549720275411611",
                "about" => "【樂譜訂購服務】\n【Music Score ordering service in Hong Kong】\n\n。香港音樂百貨店。\n。Musician specialized store。",
                "categories" => [
                    "Arts and entertainment",
                    "Film & music shop"
                ],
                "email" => "hello@okpou.com",
                "tel" => "68920866"
            ]
        },
        {
            url: "https://www.instagram.com/okpoumusic/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/okpoumusic/photos/a.551345258582446/988582904858677/"
        },
        {
            url: "https://www.facebook.com/okpoumusic/posts/963179150732386"
        },
        {
            url: "https://www.facebook.com/okpoumusic/photos/a.621440251572946/959493487767619/"
        }
    ];
    public final tags:Array<Tag> = [];
}

