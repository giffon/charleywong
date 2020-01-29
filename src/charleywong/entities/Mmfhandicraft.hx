package charleywong.entities;

class Mmfhandicraft implements Entity {
    public final id = "mmfhandicraft";
    public final name = [
        zh => "喵喵花の手作仔",
        en => "MMF Handicraft"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mmfhandicraft/",
            meta: [
                "about" => "MMF 是以製作韓國設計師Uncle Cat的人形貓、布袋等。希望透過自家製的布藝品，售後扣除所有成本，將利潤作為材料費用，再進行製作及義賣，全數不計成本捐給獨立動物義工或動物慈善團體。",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "email" => "mmfhandicraft@hotmail.com",
                "id" => "508057586021690"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mmfhandicraft/photos/a.511521959008586/1325907154236725/"
        },
        {
            url: "https://www.facebook.com/mmfhandicraft/photos/a.511521959008586/1319162941577813/"
        }
    ];
    public final tags:Array<Tag> = [];
}

