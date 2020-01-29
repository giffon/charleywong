package charleywong.entities;

class Saramadehk implements Entity {
    public final id = "saramade.hk";
    public final name = [
        zh => "莎拉手工皂",
        en => "Saramade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/saramade.hk/",
            meta: [
                "about" => "手工皂零售、訂製母乳皂及婚禮回禮、手工皂及天然護膚保養品教學等。\n\nSaramade由莎拉主理，莎拉為手工皂專業講師(台灣手創藝術協會)、香港註冊社工、ACP國際園藝治療師。",
                "categories" => [
                    "Household supplies",
                    "Health/beauty"
                ],
                "tel" => "95893076",
                "id" => "1526916710954067"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/saramade.hk/photos/a.1550558021923269/2359883004324096/"
        }
    ];
    public final tags:Array<Tag> = [];
}

