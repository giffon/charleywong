package charleywong.entities;

class Cravingsketchers implements Entity {
    public final id = "cravingsketchers";
    public final name = [
        zh => "飢餓畫家",
        en => "CravingSketchers"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cravingsketchers/",
            meta: [
                "id" => "1434184913308361",
                "about" =>
                "We are a group of life drawing lovers. Targeting small eateries and restaurants all over Hong Kong, we will organise regular drawing opportunities for members to sketch out their favourite moments. All who appreciate art are welcome.",
                "categories" => [
                    "Arts & humanities website"
                ],
                "email" => "cravingsketchers@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/cravingsketchers/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cravingsketchers/photos/a.1434269549966564/2386153291444847/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        organization
    ];
}

