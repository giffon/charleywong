package charleywong.entities;

class SunnyChanPhotography implements Entity {
    public final id = "sunnychanphotography";
    public final name = [
        en => "Sunny Chan Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.sunnychan.com.hk"
        },
        {
            url: "https://www.facebook.com/sunnychanphotography/",
            meta: [
                "id" => "289372844422646",
                "about" =>
                "Sunny Chan Photography\nEmail: sunnychanphoto@gmail.com\nWebsite: www.sunnychan.com.hk\nInstagram: www.instagram.com/sunnychanphotography",
                "categories" => [
                    "Photographer",
                    "Artist"
                ],
                "email" => "sunnychanphoto@gmail.com",
                "tel" => "64385670"
            ]
        },
        {
            url: "https://www.instagram.com/sunnychanphotography/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sunnychanphotography/posts/3060421240651112"
        }
    ];
}

