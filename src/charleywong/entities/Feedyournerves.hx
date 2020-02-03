package charleywong.entities;

class Feedyournerves implements Entity {
    public final id = "feedyournerves";
    public final name = [
        zh => "神經餵飼",
        en => "feed your nerves"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/feedyournerves/",
            meta: [
                "id" => "430978523743780",
                "about" => "白紙的飯堂 —— 善待神經的用餐空間。\n.\n砵蘭街434號 太子地鐵站D岀口...\n\n\n\n\nSee more",
                "categories" => [
                    "Coffee shop",
                    "Restaurant",
                    "Tea room"
                ],
                "addr" => "G/F, 434 Portland Street, Mong Kok",
                "area" => "Kowloon, Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/feedyournerves/photos/a.432286176946348/1318791754962448/"
        },
        {
            url: "https://www.facebook.com/feedyournerves/photos/a.433149606860005/1198871436954481/"
        },
        {
            url: "https://www.facebook.com/feedyournerves/photos/a.432286176946348/1197321887109436/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

