package charleywong.entities;

class CanesHairStylist implements Entity {
    public final id = "Dozzycanes";
    public final name = [
        en => "Canes Hair Stylist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Dozzycanes/",
            meta: [
                "id" => "382965248573705",
                "about" => "十五年經驗 「曾報讀日本shiseido美髮團體」「曾參與台灣香港節目幕後製作」「 Paimore高級文憑」「 亞洲區韓國進修課程」選用醫學美容角度概念打造無受損髮質 歡迎任何髮型問題查詢",
                "categories" => [
                    "Hair salon"
                ],
                "addr" => "元朗康景街25號華恩樓1樓",
                "area" => "Kowloon, Hong Kong",
                "email" => "canes1126@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Dozzycanes/posts/1186141174922771"
        },
        {
            url: "https://www.facebook.com/Dozzycanes/posts/1121227861414103"
        }
    ];
    public final tags:Array<Tag> = [
        salon
    ];
}

