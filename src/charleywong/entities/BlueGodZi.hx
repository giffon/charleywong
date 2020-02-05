package charleywong.entities;

class BlueGodZi implements Entity {
    public final id = "BlueGodZi";
    public final name = [
        zh => "藍橘子"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BlueGodZi/",
            meta: [
                "id" => "181821911903965",
                "about" => "小說、專欄作家、編劇、推出20本小說，《阿公講鬼》曾奪小說金閱獎。電影《醉後愛上你》編劇、漫畫《再造空間》《重返地平線》、多個廣告編劇。作品《假若愛有期限》被Viutv改編成劇集",
                "categories" => [
                    "Author",
                    "Just for fun"
                ],
                "email" => "bluegodg@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BlueGodZi/posts/2358909454195189"
        },
        {
            url: "https://www.facebook.com/BlueGodZi/posts/2462477347171732"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

