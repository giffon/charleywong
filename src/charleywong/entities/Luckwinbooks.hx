package charleywong.entities;

class Luckwinbooks implements Entity {
    public final id = "luckwinbooks";
    public final name = [
        zh => "樂文書店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/luckwinbooks/",
            meta: [
                "about" => "旺角西洋菜街62號3樓\n(旺角港鐵站 E出口 銀行中心)\nemail：luckwinbooks@gmail.com...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Book shop"
                ],
                "email" => "luckwinbooks@gmail.com"
            ]
        },
        {
            url: "https://www.facebook.com/LuckWinBookStore/",
            meta: [
                "about" => "旺角西洋菜街62號3樓\n(旺角港鐵站 E出口 銀行中心)\nemail: luckwinbooks@gmail.com",
                "categories" => [
                    "Independent book shop",
                    "Book"
                ],
                "addr" => "旺角西洋菜街62號三樓",
                "area" => "Hong Kong",
                "email" => "luckwinbooks@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/luckwinbooks/posts/2459517437627043"
        }
    ];
}

