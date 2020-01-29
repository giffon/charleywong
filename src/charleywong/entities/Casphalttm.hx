package charleywong.entities;

class Casphalttm implements Entity {
    public final id = "casphalt.tm";
    public final name = [
        zh => "清山塾",
        en => "Casphalt"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/casphalt.tm/",
            meta: [
                "id" => "959232277512132",
                "about" => "新界西社區實驗場——歡迎有關社區、藝術的實驗提案\nSocial laboratory in New Territories West. Experimentation on society and arts welcomed!.",
                "categories" => [
                    "Arts and crafts shop",
                    "Community",
                    "Art gallery"
                ],
                "addr" => "Tuen Fu Road",
                "area" => "Tuen Mun",
                "email" => "casphalt.tm@gmail.com",
                "tel" => "24616288"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/casphalt.tm/posts/2094353474000001"
        },
        {
            url: "https://www.facebook.com/casphalt.tm/posts/2013972268704789"
        }
    ];
    public final tags:Array<Tag> = [];
}

