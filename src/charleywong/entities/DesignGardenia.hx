package charleywong.entities;

class DesignGardenia implements Entity {
    public final id = "designgardenia";
    public final name = [
        en => "Design Gardenia"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/designgardenia/",
            meta: [
                "about" =>
                "Moonbe the moonbear and Sunny the fox. Unique original hand-drawn stickers and greeting cards. You can\'t find them elsewhere • 原創手繪貼紙、賀卡",
                "categories" => [
                    "Arts and crafts shop",
                    "Graphic designer"
                ],
                "email" => "designgardenia.moonbe@gmail.com",
                "id" => "1834168226831644"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/designgardenia/photos/a.1845056285742838/2473755809539546/"
        },
        {
            url: "https://www.facebook.com/designgardenia/photos/a.1845056285742838/2343775459204249/"
        },
        {
            url: "https://www.facebook.com/designgardenia/photos/a.1845056285742838/2321972904717838/"
        }
    ];
    public final tags:Array<Tag> = [];
}

