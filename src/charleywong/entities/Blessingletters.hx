package charleywong.entities;

class Blessingletters implements Entity {
    public final id = "blessingletters";
    public final name = [
        en => "Blessing letters"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/blessingletters/",
            meta: [
                "id" => "1640788889328241",
                "about" =>
                "In a journey of lettering , watercoloring and creating, hope that my creation bring people joy, peace and hope.\n\nIG:blessingletters",
                "categories" => [
                    "Product/service"
                ],
                "email" => "the.blessing.letters@gmail.com",
                "tel" => "68262230"
            ]
        },
        {
            url: "https://www.instagram.com/blessingletters/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/blessingletters/photos/a.1645501345523662/3374617732612006/"
        }
    ];
    public final tags:Array<Tag> = [];
}

