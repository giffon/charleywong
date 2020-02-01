package charleywong.entities;

class MegatoniProduction implements Entity {
    public final id = "MegatoniProduction";
    public final name = [
        en => "Megatoni Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.megatoniproduction.com"
        },
        {
            url: "https://www.facebook.com/MegatoniProduction/",
            meta: [
                "id" => "1592637540957367",
                "about" => "8mm、16mm、135、127、120、4x5、8x10菲林沖洗。",
                "categories" => [
                    "Arts and entertainment",
                    "Photography & videography"
                ],
                "addr" => "深水埗基隆街139號地下",
                "area" => "Sham Shui Po",
                "email" => "info@megatoniproduction.com",
                "tel" => "59849083"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MegatoniProduction/photos/a.1592645617623226/2541922286028883/"
        },
        {
            url: "https://www.facebook.com/MegatoniProduction/photos/a.1596222750598846/2531545930399852/"
        },
        {
            url: "https://www.facebook.com/MegatoniProduction/photos/a.1596222750598846/2448312452056534/"
        }
    ];
    public final tags:Array<Tag> = [
        photography,
        shop
    ];
}

