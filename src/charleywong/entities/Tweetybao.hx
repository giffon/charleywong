package charleywong.entities;

class Tweetybao implements Entity {
    public final id = "Tweetybao";
    public final name = [
        zh => "包川",
        en => "Tweety Bao"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Tweetybao/",
            meta: [
                "about" => "情侶日常漫畫、手繪食譜、插畫",
                "categories" => [
                    "Artist"
                ],
                "email" => "tweeco@hotmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Tweetybao/photos/a.556072264467204/3298158323591904/"
        },
        {
            url: "https://www.facebook.com/Tweetybao/photos/a.556072264467204/3179728442101560/"
        },
        {
            url: "https://www.facebook.com/Tweetybao/photos/a.556072264467204/3097447923662946/"
        }
    ];
}

