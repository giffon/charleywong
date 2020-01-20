package charleywong.entities;

class OMTheplacement implements Entity {
    public final id = "OM.TPM";
    public final name = [
        en => "OM.Theplacement"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/OM.TPM/",
            meta: [
                "categories" => [
                    "Product/Service"
                ],
                "email" => "om.theplacement@gmail.com",
                "tel" => "96069210"
            ]
        },
        {
            url: "https://www.instagram.com/om.theplacement/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/OM.TPM/posts/447217822500010"
        },
        {
            url: "https://www.facebook.com/OM.TPM/posts/378290342726092"
        }
    ];
}

