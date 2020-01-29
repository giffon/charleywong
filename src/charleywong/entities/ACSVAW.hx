package charleywong.entities;

class ACSVAW implements Entity {
    public final id = "ACSVAW";
    public final name = [
        zh => "關注婦女性暴力協會",
        en => "Association Concerning Sexual Violence Against Women"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://rainlily.org.hk"
        },
        {
            url: "https://www.facebook.com/ACSVAW/",
            meta: [
                "id" => "124616407615456",
                "about" => "推動性別平等　締造零性暴力社會\nPromote Gender Equity Strive for Zero Sexual Violence",
                "categories" => [
                    "Non-governmental organisation (NGO)",
                    "Non-profit organisation",
                    "Education"
                ],
                "addr" => "何文田愛民邨建民樓平台405至410室",
                "area" => "Hong Kong",
                "email" => "enquiry@rainlily.org.hk",
                "tel" => "23922569"
            ]
        },
        {
            url: "https://www.instagram.com/acsvaw/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ACSVAW/photos/a.194713697272393/728241010586323/"
        },
        {
            url: "https://www.facebook.com/ACSVAW/posts/2484473394963067"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}
