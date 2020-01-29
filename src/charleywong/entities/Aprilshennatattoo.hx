package charleywong.entities;

class Aprilshennatattoo implements Entity {
    public final id = "AprilHenna";
    public final name = [
        en => "April\'s henna tattoo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AprilHenna/",
            meta: [
                "about" => "喜歡畫畫的左撇子\n喜歡分享印度彩繪Henna Tattoo\nHenna=印度純天然植物染料\n可維持1-2週再慢慢淡化�彩色短約一週\n有興趣歡迎inbox / wtapp65435092",
                "categories" => [
                    "Product/service"
                ],
                "tel" => "65435092",
                "id" => "2236298206693557"
            ]
        },
        {
            url: "https://www.instagram.com/apr_henna/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AprilHenna/photos/a.2256811801308864/2416244188698957/"
        },
        {
            url: "https://www.facebook.com/AprilHenna/photos/a.2256811801308864/2375030359487007/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
    ];
}

