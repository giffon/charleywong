package charleywong.entities;

class GardenMeow implements Entity {
    public final id = "gardenmeow.hk";
    public final name = [
        en => "Garden Meow"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/gardenmeow.hk/",
            meta: [
                "about" => "Book Store Cafe · Taiwanese Cuisine · Supper · Dessert · Beer",
                "categories" => [
                    "Taiwanese restaurant",
                    "Cafe"
                ],
                "addr" => "上環鴨巴甸街35號",
                "area" => "Hong Kong",
                "tel" => "28185438",
                "id" => "821851117979841"
            ]
        },
        {
            url: "https://www.instagram.com/gardenmeow/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gardenmeow.hk/posts/1449962695168677"
        },
        {
            url: "https://www.facebook.com/gardenmeow.hk/posts/1441078436057103"
        },
        {
            url: "https://www.facebook.com/gardenmeow.hk/photos/a.877772009054418/1427940634037550/"
        },
        {
            url: "https://www.facebook.com/gardenmeow.hk/photos/a.877772009054418/1413976578767289/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

