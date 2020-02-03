package charleywong.entities;

class Benchefhk implements Entity {
    public final id = "ben.chef.hk";
    public final name = [
        zh => "犇道",
        en => "ChefBen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.foodpanda.hk/zh/restaurant/w7lf/chefben-slow-cook-roasted-beef-shop#restaurant-info"
        },
        {
            url: "https://www.facebook.com/ben.chef.hk/",
            meta: [
                "id" => "1948992798699423",
                "about" => "犇道（犇音:奔)「道」代表我們的信仰及精神，犇道ChefBen一直致力讓顧客能以合理價錢品嚐到優質料理，同時亦帶給大家視覺及味覺上的幸福感覺！而這就是我們所「犇」奔向的「道」信念。",
                "categories" => [
                    "Japanese restaurant"
                ],
                "addr" => "屯門龍門路43號龍門居9座地下91號鋪",
                "area" => "Hong Kong",
                "email" => "tm.chefben@gmail.com",
                "tel" => "34622187"
            ]
        },
        {
            url: "https://www.instagram.com/chef_ben_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ben.chef.hk/photos/a.1970693259862710/2512445369020827/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

