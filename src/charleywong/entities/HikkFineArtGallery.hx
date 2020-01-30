package charleywong.entities;

class HikkFineArtGallery implements Entity {
    public final id = "HikkFineArtGallery";
    public final name = [
        en => "Hikk Fine Art Gallery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hikk.net"
        },
        {
            url: "https://www.facebook.com/HikkFineArtGallery/",
            meta: [
                "id" => "355883131191433",
                "about" =>
                "About Hikk\nHikk Tsang is a Hong Kong-based professional photographer and artist with over 10 years experience in portrait photography. He set up KK ART WORKSHOP in 2011 and started to bring finest photography into the realm of fine art.",
                "categories" => [
                    "Professional service"
                ],
                "email" => "hikk3000@hotmail.com",
                "tel" => "96242217"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HikkFineArtGallery/posts/2558219954291062"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

