package charleywong.entities;

class Footballtellstory implements Entity {
    public final id = "Footballtellstory";
    public final name = [
        zh => "足球說故事"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.fanpiece.com/footballstory"
        },
        {
            url: "https://www.facebook.com/Footballtellstory/",
            meta: [
                "id" => "458491330900911",
                "about" => "作者：贊師父\n\n足球，不是重點；重點，在於背後那些故事。\n\n個人專頁：https://www.facebook.com/jencfu2015",
                "categories" => [
                    "Writer"
                ],
                "email" => "jencfu2015@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Footballtellstory/photos/a.588513984565311/2579029802180376/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

