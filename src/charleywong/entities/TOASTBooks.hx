package charleywong.entities;

class TOASTBooks implements Entity {
    public final id = "toast.books";
    public final name = [
        en => "TOAST Books"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/toast.books/"
        },
        {
            url: "https://www.facebook.com/toast.books/",
            meta: [
                "about" => "獨立書店 Independent bookstore\n藝術 Art\n哲學 Philosophy...\n\n\nSee more",
                "categories" => [
                    "Independent book shop"
                ],
                "addr" => "九龍石硤尾偉智街38號福田大廈地下11號舖 (馬會對面) Shop 11, G/F., 38 Wai Chi Street, Shek Kip Mei, Kowloon.",
                "area" => "Hong Kong",
                "id" => "179573982745561"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/toast.books/photos/a.181747439194882/352016565501301"
        }
    ];
    public final tags:Array<Tag> = [
        book,
        shop
    ];
}

