package charleywong.entities;

class MoMoBunnyHandcraft implements Entity {
    public final id = "MoMoBunnyHandcraft";
    public final name = [
        zh => "毛毛兔羊毛氈手作",
        en => "Mo Mo Bunny Handcraft"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MoMoBunnyHandcraft/",
            meta: [
                "about" => "歡迎您來圖給我們訂製羊毛氈,\n香港/台灣/澳門pm或line我們\nwhatsapp:95575685...\n\n\n\n\nSee more",
                "categories" => [
                    "Product/service"
                ],
                "tel" => "95575685",
                "id" => "384001404991476"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MoMoBunnyHandcraft/photos/a.572594436132171/769698109755135/"
        },
        {
            url: "https://www.facebook.com/MoMoBunnyHandcraft/posts/2386849208040009"
        }
    ];
}

