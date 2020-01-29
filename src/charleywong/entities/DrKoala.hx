package charleywong.entities;

class DrKoala implements Entity {
    public final id = "Dr.KoalaHK";
    public final name = [
        en => "Dr. Koala"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.drkoalahk.com"
        },
        {
            url: "https://www.instagram.com/dr.koala_hk/"
        },
        {
            url: "https://www.facebook.com/Dr.KoalaHK/",
            meta: [
                "id" => "160852454253838",
                "about" => "從有機中尋找靈與美\n\nLess is More，我們深信皮膚需要的只是簡單的養分。我們拒絕由人工成分和潛在有害物質組成的產品。Dr. Koala 最希望顧客看清楚產品中的潛在有害物質，成分會告訴你事實的",
                "categories" => [
                    "Beauty, cosmetic & personal care",
                    "Beauty shop",
                    "Health/beauty"
                ],
                "addr" => "香港島太古城中心一期誠品生活G009號鋪",
                "area" => "Hong Kong",
                "email" => "info@drkoalahk.com",
                "tel" => "34191177"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Dr.KoalaHK/posts/972153993123676"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

