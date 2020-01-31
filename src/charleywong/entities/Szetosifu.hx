package charleywong.entities;

class Szetosifu implements Entity {
    public final id = "szetosifu";
    public final name = [
        zh => "司徒夾帶"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/szetosifu"
        },
        {
            url: "https://www.facebook.com/szetosifu/",
            meta: [
                "id" => "276842442361916",
                "about" => "司徒夾帶, 一介Video Blogger, 並非KOL。\n客戶可Whatsapp: (852) 6126 8850 Roy\nhttps://www.youtube.com/umoviegroup",
                "categories" => [
                    "Producer"
                ],
                "email" => "enquiry@hkvlogger.com"
            ]
        },
        {
            url: "https://www.instagram.com/szetosifu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/szetosifu/videos/1076082359104583/"
        },
        {
            url: "https://www.facebook.com/szetosifu/posts/2515377995175005"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

