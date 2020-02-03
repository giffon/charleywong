package charleywong.entities;

class Blowbearbear implements Entity {
    public final id = "blowbearbear";
    public final name = [
        zh => "熊人誌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/blow_bearbear/"
        },
        {
            url: "https://www.facebook.com/blowbearbear/",
            meta: [
                "id" => "683506321733935",
                "about" => "熊人誌\n主張語無倫次,只係一個平凡得很的打工仔..\n香港市民裡面其中一個小嘍囉....\n\n\n\n\nSee more",
                "categories" => [
                    "Just for fun"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/blowbearbear/photos/a.683509845066916/2484730841611465/"
        },
        {
            url: "https://www.facebook.com/blowbearbear/photos/a.683509845066916/2291050264312858/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

