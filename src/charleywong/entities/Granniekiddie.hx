package charleywong.entities;

class Granniekiddie implements Entity {
    public final id = "granniekiddie";
    public final name = [
        en => "grannie kiddie"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://granniekiddie.com"
        },
        {
            url: "https://www.facebook.com/granniekiddie/",
            meta: [
                "id" => "207244346318230",
                "about" => "對 50-90 年代愛到不能自拔嘅年輕阿嬤 grannie kiddie\n搜邏各式各樣的古著古物，把心頭好公諸同好\n希望用古著抗衡速食時裝 anti - Fast Fashion，\n透過不同層面，推介唔同嘅環保生活模式",
                "categories" => [
                    "Charity or second-hand shop"
                ],
                "addr" => "九龍尖沙咀漆咸道南45-51號尖東堡商場地庫B21號",
                "area" => "Kowloon, Hong Kong",
                "email" => "granniekiddie@gmail.com",
                "tel" => "67187697"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/granniekiddie/posts/881586782217313"
        },
        {
            url: "https://www.facebook.com/granniekiddie/posts/923607314681926"
        }
    ];
}

