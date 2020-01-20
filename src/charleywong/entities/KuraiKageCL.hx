package charleywong.entities;

class KuraiKageCL implements Entity {
    public final id = "DarkCrystalDiary";
    public final name = [
        en => "Kurai Kage CL",
        zh => "暗い影．黑色少年之日記"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/DarkCrystalDiary/",
            meta: [
                "about" => "大家好，歡迎來到我的黑暗水晶日記，有我的插圖、生活照片和更多，希望這些不會打擾你很多...至少我可以分享這些回憶。",
                "categories" => [
                    "Art",
                    "Personal blog"
                ],
                "email" => "chiwailam181@yahoo.com.hk"
            ]
        },
        {
            url: "https://www.instagram.com/_.kuraikagecl._/"
        },
        {
            url: "https://www.facebook.com/KuraiKageCL/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KuraiKageCL/posts/534116607182938"
        },
        {
            url: "https://www.facebook.com/KuraiKageCL/posts/527311647863434"
        },
        {
            url: "https://www.facebook.com/DarkCrystalDiary/photos/a.2004825133088095/2518694438367826/"
        }
    ];
}

