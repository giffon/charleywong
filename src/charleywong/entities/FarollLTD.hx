package charleywong.entities;

class FarollLTD implements Entity {
    public final id = "FarollLTD";
    public final name = [
        en => "Faroll",
        zh => "法奧"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.faroll.com"
        },
        {
            url: "https://www.facebook.com/FarollLTD/",
            meta: [
                "about" => "FAROLL(法奧)有限公司主要經營一站式網上售賣電腦零件及周邊設備，當中包括售前查詢、組裝、運送及完善售後服務，本公司秉持著以客人為先的精神，提供高質素的服務，以建立客人對我們的",
                "categories" => [
                    "Electronics",
                    "Computer company",
                    "Retail company"
                ],
                "addr" => "荔枝角通洲西街1066號安泰工業大廈3樓A座316室",
                "area" => "Lai Chi Kok",
                "email" => "info@faroll.com",
                "tel" => "34264501",
                "id" => "437761629928398"
            ]
        },
        {
            url: "https://www.instagram.com/farollltd/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FarollLTD/posts/958999144471308"
        },
        {
            url: "https://www.facebook.com/FarollLTD/posts/951584398546116"
        },
        {
            url: "https://www.facebook.com/FarollLTD/posts/898917030479520"
        }
    ];
    public final tags:Array<Tag> = [
        computer
    ];
}

