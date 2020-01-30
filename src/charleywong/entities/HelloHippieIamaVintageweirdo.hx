package charleywong.entities;

class HelloHippieIamaVintageweirdo implements Entity {
    public final id = "hellohippie";
    public final name = [
        en => "Hello Hippie \"I am a Vintage weirdo\""
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hellohippie/",
            meta: [
                "about" =>
                "::HELLO HIPPIE 你好嬉皮 \"We are vintage weirdo\"\nWe offer incredible vintage clothing from around the world.\nBase Hong Kong since 2014\nLike and follow us if you\'re hippie enough^^",
                "categories" => [
                    "Vintage shop"
                ],
                "addr" => "香港尖沙咀梳士巴利道3號海港城星光行2樓",
                "area" => "Hong Kong",
                "email" => "hellohippievintage@gmail.com",
                "tel" => "67237773",
                "id" => "196474460432012"
            ]
        },
        {
            url: "https://www.instagram.com/hellohellohippie/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hellohippie/photos/a.665696683509785/2608870549192379/"
        },
        {
            url: "https://www.facebook.com/hellohippie/photos/a.665791163500337/2594073390672095/"
        }
    ];
    public final tags:Array<Tag> = [
        clothing,
        accessories
    ];
}

