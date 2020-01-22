package charleywong.entities;

class PaperRenaissance implements Entity {
    public final id = "Paper.Renaissance";
    public final name = [
        zh => "紙· 藝復興",
        en => "Paper Renaissance Handmade Store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Paper.Renaissance/",
            meta: [
                "about" =>
                "•Wedding Stationary• Greeting Card• Scrapbooking• Graphic• Workshop•\nWe provide handmade unique design for personalize paper craft products\n•By Appointment",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "addr" => "官塘成業街16號怡生工業中心A座5樓517室",
                "area" => "Kwun Tong",
                "email" => "paper.renaissance@gmail.com",
                "tel" => "98302337",
                "id" => "419001164863979"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Paper.Renaissance/posts/2392612050836204"
        },
        {
            url: "https://www.facebook.com/Paper.Renaissance/photos/a.479466052150823/662856447145115/"
        }
    ];
}

