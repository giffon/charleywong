package charleywong.entities;

class NikonikoHandmade implements Entity {
    public final id = "nikoniko.handmade";
    public final name = [
        en => "Nikoniko Handmade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/nikoniko.handmade/",
            meta: [
                "about" =>
                "Handmade resin jewelry, based in Hong Kong.Inspired by nature & solar system, created by hand,with love.\n\n/ Enjoy the little things in life",
                "categories" => [
                    "Jewellery/watches"
                ],
                "addr" => "Shop239,2/F,Causeway Place,2-10 Great George Street,Causeway Bay,",
                "area" => "Hong Kong",
                "id" => "647789308578578"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/nikoniko.handmade/photos/a.662998973724278/2967459849944834/"
        },
        {
            url: "https://www.facebook.com/nikoniko.handmade/photos/a.687177457973096/2878155715541915/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

