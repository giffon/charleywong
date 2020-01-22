package charleywong.entities;

class VsWorkshop implements Entity {
    public final id = "vsworkshop";
    public final name = [
        en => "V\'s Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/vsworkshop/",
            meta: [
                "about" => "All about beading",
                "categories" => [
                    "Accessories"
                ],
                "email" => "vs_vickyan@yahoo.com",
                "tel" => "93012419",
                "id" => "188918064578895"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/vsworkshop/photos/a.194456507358384/1607541009383253/"
        },
        {
            url: "https://www.facebook.com/vsworkshop/photos/a.194456507358384/1538324662971555/"
        }
    ];
}

