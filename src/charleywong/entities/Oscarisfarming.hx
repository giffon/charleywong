package charleywong.entities;

class Oscarisfarming implements Entity {
    public final id = "oscar.is.farming";
    public final name = [
        zh => "奧仕卡"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oscar.is.farming/",
            meta: [
                "id" => "1610832795903319",
                "about" => "歌詞耕作/聽歌過活/無限廢話",
                "categories" => [
                    "Blogger"
                ],
                "email" => "oscar.is.tired@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oscar.is.farming/posts/2356733764646548"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

