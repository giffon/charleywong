package charleywong.entities;

class Homeworkhandmade implements Entity {
    public final id = "homework.handmade";
    public final name = [
        zh => "家庭作業",
        en => "Homework"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/homework.handmade/",
            meta: [
                "about" => "HOMEWORK堅持採用耐磨的高質布料及簡潔實用的設計，配以家中成員的專長。希望為顧客製作出質樸、時尚的隨身袋子。 而且秉承家庭作業的精神，為家帶點新鮮，用花去表達愛，宣揚家的重要。",
                "categories" => [
                    "Product/service",
                    "Florist",
                    "Bags/luggage"
                ],
                "email" => "homework.handmade.hk@gmail.com",
                "id" => "362985017107922"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/homework.handmade/photos/a.374559179283839/726308734108880/"
        },
        {
            url: "https://www.facebook.com/homework.handmade/photos/a.374559179283839/2860277527378646/"
        }
    ];
    public final tags:Array<Tag> = [];
}

