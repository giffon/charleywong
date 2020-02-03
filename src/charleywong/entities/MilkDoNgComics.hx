package charleywong.entities;

class MilkDoNgComics implements Entity {
    public final id = "milkdongcomics";
    public final name = [
        en => "Milk DoNg Comics"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/milkdongcomics/",
            meta: [
                "id" => "989437101144969",
                "about" => "I Hate Humans!!!!!\nEven Include of Myself...",
                "categories" => [
                    "Artist"
                ],
                "email" => "mrmdiolnk@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/milkdongcomics/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/milkdongcomics/photos/a.2203102216445112/2345226625566003/"
        },
        {
            url: "https://www.facebook.com/milkdongcomics/photos/a.1874920325929971/2444278942327437/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

