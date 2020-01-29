package charleywong.entities;

class Ninebirdfrog implements Entity {
    public final id = "ninebirdfrog";
    public final name = [
        zh => "九鳥蛙古董館",
        en => "Nine Bird Frog Antiques"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ninebirdfrog/",
            meta: [
                "about" => "「九鳥蛙古董館」從世界各地收藏不同時代的古董飾物，經過翻新修復，有時會加上自己的設計和改裝，並以大眾接受的相宜價錢出發，讓每人也有機會體驗古品穿戴身上的獨特藝術感和魅力。",
                "categories" => [
                    "Jewellery/watches",
                    "Antiques shop",
                    "Clothing (brand)"
                ],
                "email" => "ninebirdfrog@gmail.com",
                "id" => "274459806254795"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ninebirdfrog/posts/981798738854228"
        }
    ];
    public final tags:Array<Tag> = [];
}

