package charleywong.entities;

class HKupdownhill implements Entity {
    public final id = "HKupdownhill";
    public final name = [
        zh => "上山落山"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HKupdownhill/",
            meta: [
                "about" => "上山落山上山落山上山上山樂山...",
                "categories" => [
                    "Hiking trail"
                ],
                "id" => "708061305929591"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKupdownhill/photos/a.708065442595844/2396425787093126/"
        }
    ];
    public final tags:Array<Tag> = [];
}

