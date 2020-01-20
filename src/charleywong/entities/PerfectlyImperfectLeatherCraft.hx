package charleywong.entities;

class PerfectlyImperfectLeatherCraft implements Entity {
    public final id = "PILeather";
    public final name = [
        en => "Perfectly Imperfect Leather Craft"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PILeather/",
            meta: [
                "about" => "我地係一班年輕/ 中年/ 靚仔/ 靚女/ 肥妹，\n熱愛香港嘅半桶水皮革製作人。\n100% 香港本地製造，100%手作，100% 用心製作",
                "categories" => [
                    "Shopping & retail",
                    "Product/service",
                    "Art"
                ],
                "email" => "pi.leather.craft@gmail.com",
                "tel" => "95576876"
            ]
        },
        {
            url: "https://www.instagram.com/pileathercraft/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PILeather/photos/a.457555937625295/2623117407735793/"
        },
        {
            url: "https://www.facebook.com/PILeather/posts/2544676358913232"
        },
        {
            url: "https://www.facebook.com/PILeather/posts/2499931696721032"
        }
    ];
}

