package charleywong.entities;

class FeedthebirdsHK implements Entity {
    public final id = "feedthebirdsHK";
    public final name = [
        zh => "小雀食堂",
        en => "Feed the Birds"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/feedthebirdsss/"
        },
        {
            url: "https://www.facebook.com/feedthebirdsHK/",
            meta: [
                "id" => "422311375018696",
                "about" => "小雀食堂由兩位店長主理, 希望為我城眾多小麻雀帶出慢活良食的生活態度, 探索著生活上的多元性, 細味雀嚼, 選擇想過的生活模式, 默默在生活中起革命, 啄著啄著想吃的那小蟲子 : )",
                "categories" => [
                    "Grocers"
                ],
                "email" => "feedthebirdshk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/feedthebirdsHK/photos/a.429008637682303/561010341148798/"
        },
        {
            url: "https://www.facebook.com/feedthebirdsHK/posts/489858574930642"
        },
        {
            url: "https://www.facebook.com/feedthebirdsHK/posts/515951348988031"
        },
        {
            url: "https://www.facebook.com/feedthebirdsHK/photos/a.429008637682303/514681759114990/"
        },
        {
            url: "https://www.facebook.com/feedthebirdsHK/photos/a.429008637682303/505426966707136/"
        }
    ];
}

