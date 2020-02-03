package charleywong.entities;

class Eatandtravel implements Entity {
    public final id = "eatandtravel";
    public final name = [
        zh => "飲食男女"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://etw.hk"
        },
        {
            url: "https://www.facebook.com/eatandtravel/",
            meta: [
                "id" => "152316178147083",
                "about" => "香港最識食的飲食媒體，內容包括飲食、食譜、旅遊及名人專欄。每日推介各區高質食店、最新飲食潮流，及世界各地旅遊飲食。\n\n廣告查詢\n熱線/2752-3666\n電郵/etsales@nextdigital.com.hk",
                "categories" => [
                    "Media/news company",
                    "Food and drink",
                    "Local & travel website"
                ],
                "email" => "etwmarketing@nextdigital.com.hk"
            ]
        },
        {
            url: "https://www.instagram.com/eat_travel_weekly/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/eatandtravel/posts/2472353759476635"
        },
        {
            url: "https://www.facebook.com/eatandtravel/posts/2586936878018322"
        },
        {
            url: "https://www.facebook.com/eatandtravel/posts/2639121026133240"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        food
    ];
}

