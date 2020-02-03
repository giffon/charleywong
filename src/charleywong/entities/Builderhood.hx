package charleywong.entities;

class Builderhood implements Entity {
    public final id = "builderhood";
    public final name = [
        zh => "地盤佬江湖"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/builderhood/",
            meta: [
                "id" => "1710262555863625",
                "about" => "買架撐，就係咁簡單",
                "categories" => [
                    "Product/service",
                    "Media/news company",
                    "Hardware shop"
                ],
                "email" => "info@tengenit.com",
                "tel" => "27717298"
            ]
        },
        {
            url: "https://www.instagram.com/builderhood/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/builderhood/posts/2547467308809808"
        },
        {
            url: "https://www.facebook.com/builderhood/photos/a.1780172032206010/2531306887092517/"
        },
        {
            url: "https://www.facebook.com/builderhood/videos/2334935720157807/"
        }
    ];
    public final tags:Array<Tag> = [
        hardware
    ];
}

