package charleywong.entities;

class TroisCafe implements Entity {
    public final id = "troiscafe";
    public final name = [
        en => "Trois Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://troishk.com"
        },
        {
            url: "https://www.facebook.com/troiscafe/",
            meta: [
                "id" => "1323200871161105",
                "about" => "𝙲𝚑𝚊𝚍ō. 𝙲𝚘𝚏𝚏𝚎𝚎. 𝙿𝚊𝚗𝚒𝚗𝚒\n𝙼𝚘𝚗 𝚝𝚘 𝙵𝚛𝚒 | 𝟾𝚊𝚖 𝚝𝚘 𝟼𝚙𝚖\n𝚂𝚊𝚝 & 𝚑𝚘𝚕𝚒𝚍𝚊𝚢 | 𝟷𝟷𝚊𝚖 𝚝𝚘 𝟼𝚙𝚖",
                "categories" => [
                    "Coffee shop",
                    "Restaurant",
                    "Tea room"
                ],
                "email" => "info.troiscafe@gmail.com",
                "tel" => "28336980"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/troiscafe/photos/a.1324783011002891/1529635447184312/"
        },
        {
            url: "https://www.facebook.com/troiscafe/posts/1532405093574014"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

