package charleywong.entities;

class KingLoPhotography implements Entity {
    public final id = "KingLoPhotography";
    public final name = [
        en => "King Lo Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kinglophotography.com"
        },
        {
            url: "https://www.facebook.com/KingLoPhotography/",
            meta: [
                "id" => "437336796285963",
                "about" => "King Lo 香港婚紗攝影師，2014－2017年間於國際大型比賽及香港傳媒獲得多個獎項，更獲香港著名雜誌【花嫁】及【婚禮雜誌】選為「最佳婚紗攝影 歐洲」及「星級婚紗攝影」獎項。",
                "categories" => [
                    "Photographer",
                    "Bridal shop"
                ],
                "addr" => "Room 1011,10/F,Union Hing Yip Factory Building, 20 Hinig Yip Street,",
                "area" => "Kwun Tong",
                "email" => "info@kinglophotography.com",
                "tel" => "63466464"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KingLoPhotography/photos/a.437919449561031/2794228603930092/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

