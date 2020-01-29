package charleywong.entities;

class MikoTeaShop implements Entity {
    public final id = "MikoTeaShop";
    public final name = [
        zh => "雅婷中藥花茶服務公司",
        en => "Y&T Chinese Medicine Herbal Tea Company"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MikoTeaShop/",
            meta: [
                "id" => "101959041271675",
                "about" => "各位香港人注重身體，利用平時的時間，用方便的方法之下，可以飲用養生茶或會令人放鬆的花茶。\n光復香港！時代革命�\n\n本小店與@ecg.gracelam\n香港註冊中醫師合作提供線上問診服，歡迎查詢",
                "categories" => [
                    "Health/beauty",
                    "Health & wellness website",
                    "Product/service"
                ],
                "email" => "yatingtearoom@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MikoTeaShop/posts/128783341922578"
        }
    ];
    public final tags:Array<Tag> = [];
}

