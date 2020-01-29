package charleywong.entities;

class LaurenLeeMakeupStudio implements Entity {
    public final id = "laurenleemakeupstudio";
    public final name = [
        en => "Lauren Lee Makeup Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/laurenleemakeupstudio/",
            meta: [
                "about" =>
                "Celebrity Make Up Artist\nProvide Professional Makeup Class/ Personal Makeup Class/Wedding Makeup Service /Commerical Makeup\n📍 Based in HK & Travel worldwide\n📩 Laurenleemakeupstudio@gmail.com\n**By Appointment Only **",
                "categories" => [
                    "Makeup artist"
                ],
                "addr" => "Room 806, The Icon , 320-322 Kwun Tong Rd, Ngau Tau Kok",
                "area" => "Hong Kong",
                "email" => "laurenleemakeupstudio@gmail.com",
                "tel" => "56626977",
                "id" => "156080831173841"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/laurenleemakeupstudio/posts/2617998444982055"
        }
    ];
    public final tags:Array<Tag> = [];
}

