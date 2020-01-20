package charleywong.entities;

class Coffeeeedaily implements Entity {
    public final id = "coffeeeedaily";
    public final name = [
        zh => "咖啡日常",
        en => "Coffee Daily"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/coffeeeedaily/",
            meta: [
                "about" => "COFFEE IS THE BRIDGE THAT LINKS US TOGETHER AND TO THE WORLD.",
                "categories" => [
                    "Blogger",
                    "Community"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/coffeedaily_/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/coffeeeedaily/posts/1242050565954233"
        },
        {
            url: "https://www.facebook.com/coffeeeedaily/photos/a.391886564303975/1252050321620924/"
        }
    ];
}

