package charleywong.entities;

class AMAccessories implements Entity {
    public final id = "amaccessorieshk";
    public final name = [
        en => "AM Accessories"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/amaccessorieshk/",
            meta: [
                "about" => "尋覓首爾精緻飾品，誘發您獨一無二的動人魅力。",
                "categories" => [
                    "Accessories"
                ],
                "email" => "amaccessories0101@gmail.com",
                "tel" => "52876102",
                "id" => "224381674988068"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/amaccessorieshk/photos/a.226791521413750/587256148700617/"
        },
        {
            url: "https://www.facebook.com/amaccessorieshk/photos/a.226791521413750/561427527950146/"
        },
        {
            url: "https://www.facebook.com/amaccessorieshk/photos/a.226791521413750/558003754959190/"
        }
    ];
    public final tags:Array<Tag> = [];
}

