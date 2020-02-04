package charleywong.entities;

class Ptboardf implements Entity {
    public final id = "ptboardf";
    public final name = [
        en => "Part-Time Board Friend",
        zh => "兼職桌友"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://t.me/ptboardf"
        },
        {
            url: "https://www.facebook.com/ptboardf/",
            meta: [
                "id" => "1938172719756114",
                "about" => "Part Time Board Friend\n擴闊你對桌遊的想像\n\n門店: PTBF香港狼人館\nYou \'ll never board alone.",
                "categories" => [
                    "Board game"
                ],
                "email" => "ptboardf@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ptboardf/photos/a.2006140746292644/2302422646664451/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

