package charleywong.entities;

class Friezatv implements Entity {
    public final id = "friezatv";
    public final name = [
        zh => "菲利TV"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UCEFPS2O5Dd4dcT55lhP3hAg"
        },
        {
            url: "https://www.facebook.com/friezatv/",
            meta: [
                "id" => "559766767768208",
                "about" => "本專頁會提供 龍珠Z爆裂激戰 所有最新情報及各種攻略心得！\n\n另外還有分享小弟對菲利的愛　哈哈哈哈",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/friezatv/posts/739596289785254"
        }
    ];
}

