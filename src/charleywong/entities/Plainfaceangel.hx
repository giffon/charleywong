package charleywong.entities;

class Plainfaceangel implements Entity {
    public final id = "plainfaceangel";
    public final name = [
        zh => "素顏天使",
        en => "PLAINFACE ANGEL"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://plainfaceangel.blogspot.hk"
        },
        {
            url: "https://www.facebook.com/plainfaceangel/",
            meta: [
                "id" => "557979707621023",
                "about" => "知名生活潮流博客素顏天使、前《太陽報》時事專欄「潮女敢言」作者、《路訊網》兩性關係專欄「月台空隙」作者、She.com「K Channel」Guest Writer；工作聯絡 djpatricia@gmail.com",
                "categories" => [
                    "Blogger",
                    "Writer"
                ],
                "email" => "djpatricia@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/djpatricia/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/plainfaceangel/posts/2252750141477296"
        },
        {
            url: "https://www.facebook.com/plainfaceangel/posts/2302903626461947"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure,
        media
    ];
}

