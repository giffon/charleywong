package charleywong.entities;

class Daivietphohk implements Entity {
    public final id = "daivietphohk";
    public final name = [
        zh => "大越越南餐廳"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/daivietphohk/",
            meta: [
                "id" => "105807007494880",
                "about" => "有好的廚師亦要有好的食材， 兩者皆有相得益彰。",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "沙田 沙角街8-12號 花園城I期地下2號鋪",
                "area" => "Hong Kong",
                "email" => "rickyng629@yahoo.com.hk",
                "tel" => "26993535"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/daivietphohk/posts/173100787432168"
        },
        {
            url: "https://www.facebook.com/daivietphohk/photos/a.106633530745561/174068570668723/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

