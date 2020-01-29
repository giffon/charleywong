package charleywong.entities;

class Martinaesthetics implements Entity {
    public final id = "martinaesthetics";
    public final name = [
        zh => "馬丁光影",
        en => "Martin Aesthetics"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.martin-aesthetics.com"
        },
        {
            url: "https://www.facebook.com/martinaesthetics/",
            meta: [
                "id" => "822238267863732",
                "about" => "紀實攝影師‧ 婚禮攝影師‧ 人像攝影師\n\n攝影是美學，也是心的鏡子。...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Photographer"
                ],
                "email" => "info@martin-aesthetics.com",
                "tel" => "92663071"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/martinaesthetics/posts/2527818267305715"
        }
    ];
    public final tags:Array<Tag> = [];
}

