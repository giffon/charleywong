package charleywong.entities;

class Uniqhoto implements Entity {
    public final id = "uniqhoto";
    public final name = [
        en => "Uniqhoto ユニクォト"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.uniqhoto.com"
        },
        {
            url: "https://www.facebook.com/uniqhoto/",
            meta: [
                "id" => "136184826402979",
                "about" => "星級攝影記者為你紀錄難忘一刻。創辦人從事攝影工作十多年，曾任職攝影記者、雜誌封面攝影師，並為多位藝人拍攝宣傳照。作品遍及唱片封套、演唱會海報、MV及平面廣告等等。",
                "categories" => [
                    "Photographer"
                ],
                "email" => "uniqhoto@gmail.com",
                "tel" => "92559334"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/uniqhoto/photos/a.449925305028928/2786572888030813/"
        }
    ];
    public final tags:Array<Tag> = [];
}

