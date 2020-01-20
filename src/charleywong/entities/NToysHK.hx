package charleywong.entities;

class NToysHK implements Entity {
    public final id = "NToysHK";
    public final name = [
        en => "Naughty toys"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/NToysHK/",
            meta: [
                "about" => "努力為大家帶來歐美日精選用品，讓更多人生活增添情趣",
                "categories" => [
                    "Merchandising Service",
                    "Product/Service"
                ],
                "addr" => "旺角百寶利商業中心1809",
                "area" => "Hong Kong",
                "email" => "toys.naughty@yahoo.com.hk",
                "tel" => "63309535"
            ]
        },
        {
            url: "https://www.instagram.com/naughtytoys1809/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/NToysHK/posts/786154245199322"
        },
        {
            url: "https://www.facebook.com/NToysHK/photos/a.371221763359241/767030997111647/"
        },
        {
            url: "https://www.facebook.com/NToysHK/photos/a.371221763359241/757872924694121/"
        },
        {
            url: "https://www.facebook.com/NToysHK/photos/a.371221763359241/756827891465291/"
        },
        {
            url: "https://www.facebook.com/NToysHK/posts/746728712475209"
        }
    ];
}

