package charleywong.entities;

class ELWorkshop implements Entity {
    public final id = "ELWS2013";
    public final name = [
        en => "EL. Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ELWS2013/",
            meta: [
                "id" => "401562076584048",
                "about" => "我地雖然無暇參加婚展，不過繼續有大優惠俾各位fans! 來緊既 BigDay ＆PreWedding，都有 Early Bird Promotion！ 快 D 黎查詢啦！優惠期有限！\n\n- Facebook PM",
                "categories" => [
                    "Camera/photo",
                    "Photographer"
                ],
                "tel" => "60714093"
            ]
        },
        {
            url: "https://www.instagram.com/wedding_elworkshop/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ELWS2013/posts/3268597193213841"
        }
    ];
    public final tags:Array<Tag> = [];
}

