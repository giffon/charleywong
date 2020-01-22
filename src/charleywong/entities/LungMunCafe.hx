package charleywong.entities;

class LungMunCafe implements Entity {
    public final id = "LungMunCafe";
    public final name = [
        zh => "龍門冰室 X 香港人嘅冰室資源分享中心"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LungMunCafe/",
            meta: [
                "about" => "1）屯門龍門居地舖102-103號 2）紅磡寶其利街47號銳光中心地下 3）炮台山電氣道254-280號華凱大廈地下I舖 4）銅鑼灣登龍街28號永光中心5)尖沙咀金馬倫道福橋大廈A及B舖 6)荃灣路德圍8號",
                "categories" => [
                    "Diner",
                    "Tea room"
                ],
                "addr" => "龍門冰室",
                "area" => "Hong Kong",
                "email" => "lungm.cafe@gmail.com",
                "id" => "434885916576231"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LungMunCafe/posts/2616746305056837"
        },
        {
            url: "https://www.facebook.com/LungMunCafe/posts/2726669967397803"
        }
    ];
}

