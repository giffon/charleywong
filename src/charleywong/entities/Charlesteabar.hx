package charleywong.entities;

class Charlesteabar implements Entity {
    public final id = "charlesteabar";
    public final name = [
        zh => "茶理史"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.charlesteabar.com"
        },
        {
            url: "https://www.facebook.com/charlesteabar/",
            meta: [
                "id" => "1963709670563786",
                "about" => "「茶理史」深信，能滿足各貴客的需求才是成功的重要因素，為此「茶理史」不會故步自封，大膽嘗試和改變，務求贏得貴客之信任及滿意。\n\n「茶理史」洞悉到現今健康飲食之趨勢漸漸普及；",
                "categories" => [
                    "Bubble tea shop",
                    "Tea room"
                ],
                "email" => "cs@charlesteabar.com"
            ]
        },
        {
            url: "https://www.instagram.com/Charlesteabar/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/charlesteabar/photos/a.1970948419839911/2410674215867327/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

