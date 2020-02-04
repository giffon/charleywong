package charleywong.entities;

class MaryJeanReimerLau implements Entity {
    public final id = "MaryJeanReimerLau";
    public final name = [
        zh => "翁靜晶"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MaryJeanReimerLau/",
            meta: [
                "id" => "71639965013",
                "about" => "歡迎來到翁靜晶的專頁 ！\nWelcome to Yung Ching Ching！",
                "categories" => [
                    "Author",
                    "Lawyer & law firm"
                ],
                "email" => "yungchingching@yahoo.com.hk",
                "tel" => "92050992"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MaryJeanReimerLau/photos/a.10156521266480014/10162274465735014/"
        },
        {
            url: "https://www.facebook.com/MaryJeanReimerLau/posts/10162429493940014"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

