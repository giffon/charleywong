package charleywong.entities;

class Kengopage implements Entity {
    public final id = "kengopage";
    public final name = [
        zh => "健吾"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kengostudio.com"
        },
        {
            url: "https://www.facebook.com/kengopage/",
            meta: [
                "id" => "373889722672759",
                "about" => "http://kengowrites.blogspot.com\n專欄：日經新聞網、新假期網、新Monday 網、am730、明報、日本集合\n電台節目：903國民教育\n大學講師。",
                "categories" => [
                    "Writer"
                ],
                "email" => "kengoreads@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kengopage/photos/a.467670183294712/2498611293533914/"
        },
        {
            url: "https://www.facebook.com/kengopage/videos/685149878662041/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure,
        media
    ];
}

