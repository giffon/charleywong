package charleywong.entities;

class InfinityWorkshopCafe implements Entity {
    public final id = "InfinityWorkshopCafe";
    public final name = [
        en => "Infinity Workshop Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/InfinityWorkshopCafe/",
            meta: [
                "id" => "1159296167414599",
                "categories" => [
                    "Coffee shop",
                    "Continental restaurant"
                ],
                "addr" => "The 5th Floor Of Dundas Square 43h Dundas Street Mongkok Kowloon",
                "area" => "Hong Kong",
                "email" => "infinitywscafe@gmail.com",
                "tel" => "39569117"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/InfinityWorkshopCafe/videos/543692249694154/"
        },
        {
            url: "https://www.facebook.com/InfinityWorkshopCafe/photos/a.1205255846151964/2892698640741001/"
        },
        {
            url: "https://www.facebook.com/InfinityWorkshopCafe/photos/a.1205255846151964/2784688534875346/"
        }
    ];
    public final tags:Array<Tag> = [];
}

