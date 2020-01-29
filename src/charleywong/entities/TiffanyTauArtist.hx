package charleywong.entities;

class TiffanyTauArtist implements Entity {
    public final id = "tiffanytauartist";
    public final name = [
        en => "Tiffany Tau Artist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tiffanytauartist/",
            meta: [
                "id" => "147170485443853",
                "about" => "Lux , The simple in the luxury\n✤If you have any queries , please whtsapp 66003131 Tiffany",
                "categories" => [
                    "Artist"
                ],
                "tel" => "66003131"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tiffanytauartist/posts/1314365668724323"
        }
    ];
    public final tags:Array<Tag> = [];
}

