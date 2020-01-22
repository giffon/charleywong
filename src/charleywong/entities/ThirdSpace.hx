package charleywong.entities;

class ThirdSpace implements Entity {
    public final id = "3rdspacehk";
    public final name = [
        en => "3rd Space"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/3rdspacehk/",
            meta: [
                "about" => "Founded in 2014, moved from Po Hing Fong to Upper Station Street, still serving quality pancake, coffee and brunch",
                "categories" => [
                    "Breakfast & brunch restaurant",
                    "Coffee shop",
                    "Tea room"
                ],
                "addr" => "16 Upper Station Street",
                "area" => "Sheung Wan",
                "email" => "3rdspacehk@gmail.com",
                "tel" => "92209785",
                "id" => "552755761514146"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/3rdspacehk/photos/a.552850911504631/2489368297852873/"
        },
        {
            url: "https://www.facebook.com/3rdspacehk/photos/a.552850911504631/2265582736898098/"
        }
    ];
}

