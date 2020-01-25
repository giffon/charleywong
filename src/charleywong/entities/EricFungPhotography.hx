package charleywong.entities;

class EricFungPhotography implements Entity {
    public final id = "ericfungphotography";
    public final name = [
        en => "Eric Fung Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ericfungphotography/",
            meta: [
                "id" => "116586291752021",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ericfungphotography/posts/2549280625149230"
        },
        {
            url: "https://www.facebook.com/ericfungphotography/posts/2529576757119617"
        }
    ];
}

