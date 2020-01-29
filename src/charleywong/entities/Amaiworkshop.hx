package charleywong.entities;

class Amaiworkshop implements Entity {
    public final id = "amaiworkshop";
    public final name = [
        en => "Amai workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://amaiworkshop.com"
        },
        {
            url: "https://www.facebook.com/amaiworkshop/",
            meta: [
                "id" => "783877828374468",
                "about" => "�名額先到先得，匯款確定為實�盡力48小時內回覆所有查詢，只限Faceboo或 Instagram 查詢，不回任何whatsapp、電郵或電話查詢，多謝耐心等候。\n\nFood Factory Licence No.: 4992808057",
                "categories" => [
                    "Kitchen/Cooking",
                    "Product/service"
                ],
                "email" => "info@amaiworkshop.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/amaiworkshop/photos/a.785107111584873/2685027238259508/"
        },
        {
            url: "https://www.facebook.com/amaiworkshop/photos/a.785107111584873/2685019524926946/"
        }
    ];
    public final tags:Array<Tag> = [];
}

