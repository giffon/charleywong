package charleywong.entities;

class MonkeyTreeEnglishLearningCenter implements Entity {
    public final id = "MonkeyTreeEnglishLearningCenter";
    public final name = [
        en => "Monkey Tree English Learning Center"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.monkeytree.com.hk/zh-hk"
        },
        {
            url: "https://www.facebook.com/MonkeyTreeEnglishLearningCenter/",
            meta: [
                "id" => "411488832265656",
                "about" => "歡迎嚟到 Monkey Tree English Learning Center 嘅專頁！我地係專門培訓3-12歲小朋友嘅英文課程學院，喺香港超過60間分校！快啲「Like / 讚好」我地，收取更多英文資訊同特別優惠啦！",
                "categories" => [
                    "Language school"
                ],
                "email" => "enquiry@monkeytree.com.hk",
                "tel" => "35636771"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MonkeyTreeEnglishLearningCenter/photos/a.830932950321240/2777375099010339/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

