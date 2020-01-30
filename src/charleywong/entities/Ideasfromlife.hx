package charleywong.entities;

class Ideasfromlife implements Entity {
    public final id = "ideasfromlife";
    public final name = [
        en => "Ideas from life"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ideasfromlife/",
            meta: [
                "about" => "給自己多一個選擇，使用可天然降解的皮革紙/Tyvek紙產品，減少動物真皮用量，降低殘殺動物的機會",
                "categories" => [
                    "Product/service"
                ],
                "email" => "ideasfromlifehk@gmail.com",
                "tel" => "97234300",
                "id" => "1673709699540281"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ideasfromlife/posts/2432477096996867"
        },
        {
            url: "https://www.facebook.com/ideasfromlife/photos/a.1678352619075989/2452493128328597/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

