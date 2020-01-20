package charleywong.entities;

class ArtandCultureOutreach implements Entity {
    public final id = "ArtandCultureOutreach";
    public final name = [
        zh => "Art and Culture Outreach｜艺鵠"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ArtandCultureOutreach/",
            meta: [
                "about" => "藝術｜閱讀｜手作｜永續｜空間\nART｜BOOK｜CRAFT｜GREEN｜SPACE",
                "categories" => [
                    "Performance & event venue",
                    "Book shop",
                    "Farm"
                ],
                "addr" => "灣仔軒尼詩道365-367號富德樓14樓",
                "area" => "Hong Kong",
                "email" => "hello@aco.hk",
                "tel" => "28934808"
            ]
        },
        {
            url: "https://www.instagram.com/https%3A%2F%2Fwww.instagram.com%2Fartandcultureoutreach/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ArtandCultureOutreach/photos/a.503280483032851/3071030152924525"
        }
    ];
}

