package charleywong.entities;

class EasysBook implements Entity {
    public final id = "EasysBook";
    public final name = [
        zh => "易搜書"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/EasysBook/",
            meta: [
                "id" => "1635396006766906",
                "about" => "『易搜書』是一個手機應用程式 (Mobile App)，為香港市民及學生提供一個免費的平台作 交換或買賣 二手書籍，從而達到減少浪費和環保之目的。",
                "categories" => [
                    "Book"
                ],
                "email" => "2easysale@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/EasysBook/photos/a.1674276562878850/2167964246843410/"
        },
        {
            url: "https://www.facebook.com/EasysBook/photos/a.1674276562878850/2178040385835796/"
        },
        {
            url: "https://www.facebook.com/EasysBook/photos/a.1674276562878850/2082464228726746/"
        }
    ];
    public final tags:Array<Tag> = [
        book,
        shop
    ];
}

