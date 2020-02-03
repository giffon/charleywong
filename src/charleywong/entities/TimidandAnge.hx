package charleywong.entities;

class TimidandAnge implements Entity {
    public final id = "timidandange";
    public final name = [
        en => "Timid and Ange"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.illustrator.org.hk/zh-HK/member/detail/li-man-fai-gabriel"
        },
        {
            url: "https://www.instagram.com/timid_and_ange/"
        },
        {
            url: "https://www.facebook.com/timidandange/",
            meta: [
                "id" => "1600385046925067",
                "about" => "Timid and Ange - 出身在意大利，流著honey blood的無膽熊Timid和來自奧地利，整天穿毛衣的燥狂兔Ange。",
                "categories" => [
                    "Art",
                    "Personal blog",
                    "Public figure"
                ],
                "email" => "yoy.gog@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/timidandange/photos/a.1600757046887867/2154554738174759/"
        },
        {
            url: "https://www.facebook.com/timidandange/photos/a.1600757046887867/2160263640937202/"
        },
        {
            url: "https://www.facebook.com/timidandange/photos/a.1709667265996844/2073256389637928/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

