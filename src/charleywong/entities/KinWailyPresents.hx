package charleywong.entities;

class KinWailyPresents implements Entity {
    public final id = "KinWailyP";
    public final name = [
        en => "Kin Waily Presents"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kinwaily.wixsite.com/kwps"
        },
        {
            url: "https://www.facebook.com/KinWailyP/",
            meta: [
                "id" => "614270695576370",
                "about" => "Kin Waily Presents是為你投放最多心機及呈現獨有的畫面，由2009年起開始專注於拍攝、錄影及平面設計等工作，接觸的類型廣泛，因此可在不同的工作上取其優點及概念，為你提供創新的攝影體驗!",
                "categories" => [
                    "Producer"
                ],
                "email" => "kinwaily@gmail.com",
                "tel" => "60531113"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KinWailyP/photos/a.615284705474969/1020465564956879/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

