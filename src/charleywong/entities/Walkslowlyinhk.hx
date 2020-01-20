package charleywong.entities;

class Walkslowlyinhk implements Entity {
    public final id = "walkslowlyinhk";
    public final name = [
        zh => "香港徐行"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/walkslowlyinhk/",
            meta: [
                "about" => "透過攝影，讓我重新認識香港。\n透過文字、相片及分享各種活動，希望大家和我一樣，認識更美好的香港。",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/walkslowlyinhk/posts/1307726006096958"
        },
        {
            url: "https://www.facebook.com/walkslowlyinhk/photos/a.1384721041730787/1328169140719311/"
        },
        {
            url: "https://www.facebook.com/walkslowlyinhk/photos/a.458480944354806/1441397866063104/"
        },
        {
            url: "https://www.facebook.com/walkslowlyinhk/photos/a.725707804298784/1436273969908827/"
        }
    ];
}

