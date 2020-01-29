package charleywong.entities;

class ShabibiSheepWorkshop implements Entity {
    public final id = "shabibi.sheep.workshop";
    public final name = [
        en => "Shabibi Sheep Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/shabibi.sheep.workshop/",
            meta: [
                "about" => "concrete | art | design | Hong Kong\nshowroom | studio | workshop",
                "categories" => [
                    "Artist",
                    "Home decor",
                    "Shopping & retail"
                ],
                "addr" => "Shop 106, The Mills, 45 Pak Tin Par Street",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "hi.there@shabibisheepworkshop.com",
                "tel" => "95433689",
                "id" => "1655648777997760"
            ]
        },
        {
            url: "https://www.instagram.com/sh.sh.w/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/shabibi.sheep.workshop/photos/a.1734342313461739/2584664491762846/"
        },
        {
            url: "https://www.facebook.com/shabibi.sheep.workshop/photos/a.1734342313461739/2501638496732113/"
        }
    ];
    public final tags:Array<Tag> = [];
}

