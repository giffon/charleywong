package charleywong.entities;

class Vaperahk implements Entity {
    public final id = "vaperahk";
    public final name = [
        en => "Vaperahk",
        zh => "電子煙專門店香港"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://vaperahk.boutir.com"
        },
        {
            url: "https://www.facebook.com/vaperahk/",
            meta: [
                "id" => "1429037447336713",
                "about" =>
                "VAPERA HK香港電子煙專門店\nVaperahk can help you quit smoking and bring you a modern/ healthy vape life\nTel: 852 9288 3134\nE-mail: vaperahk@gmail.com",
                "categories" => [
                    "E-Cigarette Store",
                    "Retail Company"
                ],
                "addr" => "Shop No.47, UG/F, South Seas Centre, 75 Mody Road, Tsim Sha Tsui East, Kowloon",
                "area" => "Hong Kong",
                "email" => "vaperahk@gmail.com",
                "tel" => "92883134"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/vaperahk/photos/a.1429230357317422/2484345198472594/"
        },
        {
            url: "https://www.facebook.com/vaperahk/photos/a.1429230357317422/2433761970197584/"
        }
    ];
}

