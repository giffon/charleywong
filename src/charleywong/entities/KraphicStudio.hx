package charleywong.entities;

class KraphicStudio implements Entity {
    public final id = "kraphicstudio";
    public final name = [
        en => "Kraphic Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kraphicstudio.com"
        },
        {
            url: "https://www.facebook.com/kraphicstudio/",
            meta: [
                "id" => "151538854880114",
                "about" =>
                "At Kraphic Studio, we communicate and work closely with your company to provide solutions in strategic, branding, identity, and digital.",
                "categories" => [
                    "Graphic designer",
                    "Consultation agency",
                    "Product/service"
                ],
                "addr" => "1302, Hung To Industrial Building, 80 Hung To Road, Kwun Tong",
                "area" => "Hong Kong",
                "email" => "hello@kraphicstudio.com"
            ]
        },
        {
            url: "https://www.facebook.com/2179098008977914/",
            meta: [
                "id" => "2179098008977914",
                "about" => "設計師對事物的睇法",
                "categories" => [
                    "Graphic designer",
                    "Visual arts",
                    "Brand"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/kraphicstudio/"
        },
        {
            url: "https://www.instagram.com/kev_kraphic/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/B7tFnZpJ1UI/"
        },
        {
            url: "https://www.instagram.com/p/B7u0Birpj1b/"
        }
    ];
}
