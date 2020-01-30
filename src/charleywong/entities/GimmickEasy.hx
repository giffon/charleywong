package charleywong.entities;

class GimmickEasy implements Entity {
    public final id = "GimmickEasy";
    public final name = [
        en => "Gimmick Easy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://gimmickbox.com.hk/zh/gimmickeasy"
        },
        {
            url: "https://www.facebook.com/GimmickEasy/",
            meta: [
                "id" => "265111081065047",
                "about" => "我地呢班打工仔，識得慳！又識歎！",
                "categories" => [
                    "Arts and entertainment",
                    "Discount shop",
                    "Just for fun"
                ],
                "email" => "enquiry@gimmickbox.com.hk",
                "tel" => "31562800"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GimmickEasy/videos/2469249849977064/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

