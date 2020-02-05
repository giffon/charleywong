package charleywong.entities;

class Sakanaichihotpothk implements Entity {
    public final id = "sakanaichihotpothk";
    public final name = [
        zh => "漁一海鮮火鍋料理",
        en => "Sakanaichi Hotpot"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sakanaichihotpothk/",
            meta: [
                "id" => "656111764805175",
                "about" => "新鮮好味",
                "categories" => [
                    "Hot pot restaurant"
                ],
                "addr" => "Shop 1, 2/F, Multifield Plaza, 3-7A Prat Avenue, Tsim Sha Tsui",
                "area" => "Kwun Tong",
                "email" => "sakanaichihotpot@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sakanaichihotpothk/posts/807091433040540"
        },
        {
            url: "https://www.facebook.com/sakanaichihotpothk/photos/a.658073507942334/870083970074619/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

