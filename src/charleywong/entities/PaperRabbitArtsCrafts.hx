package charleywong.entities;

class PaperRabbitArtsCrafts implements Entity {
    public final id = "PaperRabbitArtsAndCrafts";
    public final name = [
        en => "Paper Rabbit Arts & Crafts"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PaperRabbitArtsAndCrafts/",
            meta: [
                "about" =>
                "PaperRabbit 以手藝創作，每件獨一無二客製化的【手工幸福衣架】、【紙藝簽名筆】、【羽毛襟花】，歡迎任何查詢, 開班製作, 工作及合作~\n\nEmail: PaperRabbit2013@yahoo.com.hk\nInstagram: paperrabbitac",
                "categories" => [
                    "Product/service"
                ],
                "email" => "paperrabbit2013@yahoo.com.hk",
                "id" => "355481857888674"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PaperRabbitArtsAndCrafts/photos/a.2114940731942769/2114939671942875/"
        },
        {
            url: "https://www.facebook.com/PaperRabbitArtsAndCrafts/posts/2234401966663311"
        }
    ];
    public final tags:Array<Tag> = [
        accessories,
        wedding
    ];
}

