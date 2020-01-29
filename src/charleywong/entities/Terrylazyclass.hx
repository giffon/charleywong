package charleywong.entities;

class Terrylazyclass implements Entity {
    public final id = "terrylazyclass";
    public final name = [
        zh => "Terry的媒體懶人堂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/terrylazyclass/",
            meta: [
                "id" => "108102623935984",
                "about" => "一個媒體人，被迫工作，閒時寫作。做媒體太忙，讓我們上一課懶人堂。",
                "categories" => [
                    "Personal blog",
                    "Media/news company"
                ],
                "email" => "terryylazyclass@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/terrylazyclass/photos/a.108137930599120/160594988686747/"
        }
    ];
    public final tags:Array<Tag> = [];
}

