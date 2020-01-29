package charleywong.entities;

class HikerKitsiu implements Entity {
    public final id = "HikerKit.siu";
    public final name = [
        zh => "山系の • 傑少"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HikerKit.siu/",
            meta: [
                "about" => "要走遍香港每一個角落",
                "categories" => [
                    "Personal blog"
                ],
                "id" => "258109244903798"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HikerKit.siu/photos/a.258397871541602/373856743329047/"
        }
    ];
    public final tags:Array<Tag> = [];
}

