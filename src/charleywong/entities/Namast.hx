package charleywong.entities;

class Namast implements Entity {
    public final id = "namaste.hk";
    public final name = [
        en => "Namasté"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/namaste.hk/",
            meta: [
                "about" => "尋找尼泊爾寶物\nInstagram: @namaste.hanakana",
                "categories" => [
                    "Clothing (brand)",
                    "Clothes shop"
                ],
                "addr" => "葵涌廣場3樓時尚坊32號舖",
                "area" => "Hong Kong",
                "email" => "namastehanakana@gmail.com",
                "tel" => "60304044",
                "id" => "1085260571509354"
            ]
        },
        {
            url: "https://www.instagram.com/namaste.hanakana/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/namaste.hk/photos/a.1085372058164872/2423455791023152/"
        },
        {
            url: "https://www.facebook.com/namaste.hk/photos/a.1085372058164872/2324161134285952/"
        },
        {
            url: "https://www.facebook.com/namaste.hk/photos/a.1085372058164872/2520790484623015/"
        }
    ];
}

