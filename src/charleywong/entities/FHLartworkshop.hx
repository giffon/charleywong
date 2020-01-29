package charleywong.entities;

class FHLartworkshop implements Entity {
    public final id = "fhlartworkshop";
    public final name = [
        en => "FHL art workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fhlartworkshop/",
            meta: [
                "about" => "『中文大學素描及繪畫文憑課程』畢業\n『日本和諧粉彩正指導師』師承細谷典克老師\n『日本結晶之花導師』師承石丸留美老師\n『幼兒及小學生教師視藝課程』\n『兒童自閉症藝術治療藝術",
                "categories" => [
                    "Arts and crafts shop",
                    "Arts and entertainment",
                    "Arts & humanities website"
                ],
                "addr" => "將軍澳/觀塘",
                "area" => "Hong Kong",
                "email" => "fhlartworkshop@hotmail.com",
                "tel" => "64929297",
                "id" => "587249714772652"
            ]
        },
        {
            url: "https://www.instagram.com/fhlartworkshop/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fhlartworkshop/posts/1370600763104206"
        }
    ];
    public final tags:Array<Tag> = [];
}

