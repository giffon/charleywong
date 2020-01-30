package charleywong.entities;

class KenWaiImages implements Entity {
    public final id = "kenwaiimagesPG";
    public final name = [
        en => "Ken Wai Images"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kenwaiimages.com"
        },
        {
            url: "https://www.facebook.com/kenwaiimagesPG/",
            meta: [
                "id" => "306305116133376",
                "about" => "Provide the professional photography Service which about Wedding, Pre-Wedding & Event, etc.",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kenwaiimagesPG/photos/a.782380335192516/2384004891696711/"
        },
        {
            url: "https://www.facebook.com/kenwaiimagesPG/posts/2114816185282251"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

