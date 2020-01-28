package charleywong.entities;

class Foodiesmashingpumpkins implements Entity {
    public final id = "foodiesmashingpumpkins";
    public final name = [
        zh => "猛烈南瓜在飯桌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://foodie-smashingpumkins.blogspot.com"
        },
        {
            url: "https://www.facebook.com/foodiesmashingpumpkins/",
            meta: [
                "id" => "256753767673303",
                "about" => "既是Openrice的 \"SMASHING PUMPKINS\"，亦是立場新聞內的\"南瓜\" ，都市日報其中一位專欄作家。",
                "categories" => [
                    "Blogger",
                    "Website"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/foodiesmashingpumpkins/photos/a.256781661003847/3310128462335803/"
        }
    ];
}

