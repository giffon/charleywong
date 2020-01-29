package charleywong.entities;

class GFStudio implements Entity {
    public final id = "GFwedding";
    public final name = [
        en => "GF Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/GFwedding/",
            meta: [
                "id" => "191138328778",
                "about" =>
                "We are all-in for photography and videography.\nFor booking or inquiry, please contact us via phone 9772 2962.\n\nYouTube : http://www.youtube.com/gfwedding",
                "categories" => [
                    "Professional service"
                ],
                "email" => "info@gf-wedding.com",
                "tel" => "97722962"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GFwedding/photos/a.10151285387098779/10156635900053779/"
        }
    ];
    public final tags:Array<Tag> = [];
}

