package charleywong.entities;

class Bubuvanhk implements Entity {
    public final id = "bubuvanhk";
    public final name = [
        zh => "搬搬車"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.bubuvan.com"
        },
        {
            url: "https://www.facebook.com/bubuvanhk/",
            meta: [
                "id" => "1826089374336962",
                "about" => "除左一般本地搬運服務，我地更希望可以推動環保，提供二手傢俬搬運，二手傢俬拆裝服務。由去賣家屋企「拆」、中間「運」、到買家屋企「裝」，都一手包辦！",
                "categories" => [
                    "Local service",
                    "Transportation service"
                ],
                "email" => "bubuvancs@gmail.com",
                "tel" => "52263349"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bubuvanhk/posts/2498214327124460"
        },
        {
            url: "https://www.facebook.com/bubuvanhk/posts/2499662243646335"
        }
    ];
}

