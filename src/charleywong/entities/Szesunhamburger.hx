package charleywong.entities;

class Szesunhamburger implements Entity {
    public final id = "szesunhamburger";
    public final name = [
        zh => "時新漢堡飽",
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/szesunhamburger/",
            meta: [
                "id" => "528259290900458",
                "about" => "港式漢堡包始祖「時新漢堡飽」回歸紅磡，落戶黃埔花園第12期家居庭。首推招牌漢堡芝士蛋包及波浪坑紋炸薯條，配搭埋Juicy炸雞肶就更滋味無窮啦！",
                "categories" => [
                    "Fast food restaurant",
                    "Hong Kong restaurant",
                    "Burger restaurant"
                ],
                "addr" => "紅磡 黃埔花園 第12期 家居庭 地鋪G22-23號",
                "area" => "Hung Hom",
                "email" => "szesunhamburger@gmail.com",
                "tel" => "23872868"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/szesunhamburger/posts/976295476096835"
        }
    ];
}

