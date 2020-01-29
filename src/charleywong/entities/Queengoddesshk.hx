package charleywong.entities;

class Queengoddesshk implements Entity {
    public final id = "queengoddesshk";
    public final name = [
        zh => "皇后娘娘"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.queengoddesshk.com"
        },
        {
            url: "https://www.facebook.com/queengoddesshk/",
            meta: [
                "about" => "100%純天然自家製造,無添加,無防腐",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "queengoddesshk@gmail.com",
                "tel" => "55083390",
                "id" => "1295622157116661"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/queengoddesshk/photos/a.1365371770141699/2929416703737190/"
        },
        {
            url: "https://www.facebook.com/queengoddesshk/photos/a.1365787223433487/2685920388086824/"
        },
        {
            url: "https://www.facebook.com/queengoddesshk/photos/a.1365787223433487/2590757887603075/"
        }
    ];
    public final tags:Array<Tag> = [];
}

