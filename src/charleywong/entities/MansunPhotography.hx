package charleywong.entities;

class MansunPhotography implements Entity {
    public final id = "MansunPhotography";
    public final name = [
        en => "Mansun Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mansun-photography.com"
        },
        {
            url: "https://www.facebook.com/MansunPhotography/",
            meta: [
                "id" => "386097168165522",
                "about" => "接洽各類型商業/私人攝影活動，婚紗攝影，婚禮攝影，家庭兒童攝影，孕婦攝影，寵物攝影等，歡迎查詢﹗",
                "categories" => [
                    "Photographer"
                ],
                "email" => "ms@mansun-photography.com",
                "tel" => "51198047"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MansunPhotography/posts/2455431497898735"
        }
    ];
    public final tags:Array<Tag> = [];
}

