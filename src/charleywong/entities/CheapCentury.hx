package charleywong.entities;

class CheapCentury implements Entity {
    public final id = "CheapCentury";
    public final name = [
        zh => "賤人新世紀"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CheapCentury/",
            meta: [
                "id" => "211945435628813",
                "about" => "我只是一個賤人，何苦你這麼認真。\nIG: sowinghong",
                "categories" => [
                    "Just for fun"
                ],
                "email" => "cheapcentury@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CheapCentury/photos/a.211949552295068/1349254795231199/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

