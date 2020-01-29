package charleywong.entities;

class CPIC implements Entity {
    public final id = "c.pic.2015";
    public final name = [
        en => "C.PIC_"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/c.pic.2015/",
            meta: [
                "about" => "Collage lover from Hong Kong\n#Artist #Graphic #Designer #CollageLover\nPost Imagine collage\ntype C.pic_ in instagram.",
                "categories" => [
                    "Artist"
                ],
                "email" => "ymh0608@gmail.com",
                "tel" => "63833545",
                "id" => "1494326517524551"
            ]
        },
        {
            url: "https://www.instagram.com/c.pic_/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/c.pic.2015/posts/2313561182267743"
        },
        {
            url: "https://www.facebook.com/c.pic.2015/posts/2305613619729166"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

