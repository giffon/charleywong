package charleywong.entities;

class MimiGardenDIY implements Entity {
    public final id = "mimigardendiy";
    public final name = [
        en => "Mimi Garden DIY"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mimigardendiy/",
            meta: [
                "about" =>
                "\"Be gorgeous in a low profile\"\nHigh Quality Handmade Jewelries\nSince 2013, based in Hong Kong\nMimi is our princess .\nInstagram: mimigardendiy",
                "categories" => [
                    "Community"
                ],
                "id" => "578499368869015"
            ]
        },
        {
            url: "https://www.instagram.com/mimigardendiy/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mimigardendiy/photos/a.578535795532039/2724191204299810/"
        }
    ];
    public final tags:Array<Tag> = [];
}

