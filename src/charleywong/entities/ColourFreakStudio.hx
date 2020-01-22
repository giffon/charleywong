package charleywong.entities;

class ColourFreakStudio implements Entity {
    public final id = "colourfreakstudio";
    public final name = [
        en => "Colour Freak Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/colourfreakstudio/",
            meta: [
                "about" => "店主資歷 : DFA 荷蘭專業花藝設計師文憑; 5年花藝經驗，曾於大型花店工作。",
                "categories" => [
                    "Florist"
                ],
                "email" => "colourfreakstudio@gmail.com",
                "tel" => "92090192",
                "id" => "680649358712178"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/colourfreakstudio/photos/a.686959444747836/2162890893821343/"
        },
        {
            url: "https://www.facebook.com/colourfreakstudio/posts/2354790087964755"
        }
    ];
}

