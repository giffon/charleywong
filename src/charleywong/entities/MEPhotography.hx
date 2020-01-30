package charleywong.entities;

class MEPhotography implements Entity {
    public final id = "mephotohk";
    public final name = [
        en => "ME Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mephotohk.com"
        },
        {
            url: "https://www.facebook.com/mephotohk/",
            meta: [
                "id" => "143893293216",
                "about" => "ME=This is ME a real Me. ME is unique and irreplaceable.",
                "categories" => [
                    "Photography & videography"
                ],
                "addr" => "Kowloon, Hong Kong.",
                "area" => "Kowloon, Hong Kong",
                "email" => "info@mephotohk.com",
                "tel" => "68283399"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mephotohk/photos/a.10150463664453217/10157992469088217/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

