package charleywong.entities;

class CoHee implements Entity {
    public final id = "coheehk";
    public final name = [
        en => "CoHee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/coheehk/",
            meta: [
                "about" =>
                "CoHee is your one stop destination for everything you need for a good cup of specialty coffee. We source the best coffee equipment around the globe.",
                "categories" => [
                    "Coffee shop",
                    "Shopping & retail"
                ],
                "addr" => "G/F, 152 Kam Tin Shi Street, Yuen Long",
                "area" => "Hong Kong",
                "email" => "cs@coheehk.com",
                "tel" => "94497310",
                "id" => "451662288359044"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/coheehk/photos/a.460210047504268/1231516027040329/"
        },
        {
            url: "https://www.facebook.com/coheehk/photos/a.460210047504268/1115869105271689/"
        },
        {
            url: "https://www.facebook.com/coheehk/photos/a.460210047504268/1234432683415330/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

