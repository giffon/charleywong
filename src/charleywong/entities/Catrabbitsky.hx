package charleywong.entities;

class Catrabbitsky implements Entity {
    public final id = "CatrabbitSky";
    public final name = [
        en => "Catrabbitsky"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CatrabbitSky/",
            meta: [
                "about" => "自幼擁有美術天賦，從青少年時開始修讀美術和書法。99年於大專畢業，主修玩具設計。 自13年以來專業從事水墨畫及書法教學，曾接受電視台及各類雜誌採訪。近年開始以貓為題做水墨創作。",
                "categories" => [
                    "Graphic designer",
                    "Product/service",
                    "Art school"
                ],
                "email" => "admin@catrabbitsky.com",
                "tel" => "65605935",
                "id" => "278113473625"
            ]
        },
        {
            url: "https://www.instagram.com/catrabbitsky/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CatrabbitSky/photos/a.283845103625/10158891542363626/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

