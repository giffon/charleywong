package charleywong.entities;

class Dimsunmun1999 implements Entity {
    public final id = "dimsunmun1999";
    public final name = [
        zh => "點新聞 1999"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dimsunmun1999/",
            meta: [
                "id" => "118899846163535",
                "about" => "點新聞 1999，是一個追蹤香港藍頁熱點，匯集各藍頁膠論1999的專頁。每日點新聞，點解藍絲事。",
                "categories" => [
                    "Comedian"
                ],
                "email" => "dimsunmun1999@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dimsunmun1999/photos/a.121028949283958/176191317101054/"
        },
        {
            url: "https://www.facebook.com/dimsunmun1999/posts/151280869592099"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        media
    ];
}

