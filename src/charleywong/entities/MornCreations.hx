package charleywong.entities;

class MornCreations implements Entity {
    public final id = "morncreations";
    public final name = [
        en => "Morn Creations"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/morncreations/",
            meta: [
                "about" =>
                "Original Design from Hong Kong, we carry an underlying animal protection theme, endangered species are featured. Our strict anti-animal skin policy shows commitment to helping animals. Talk to Designer Steve Chan, send message or morn_creations@ymail.com",
                "categories" => [
                    "Shopping & retail",
                    "Bags/luggage",
                    "Design & fashion"
                ],
                "addr" => "G/F, No 7, Mee Lun Street, Central",
                "area" => "Hong Kong",
                "email" => "info@morn.com.hk",
                "tel" => "28697021"
            ]
        },
        {
            url: "https://www.morn-creations.com/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/morncreations/photos/a.786009541429414/2928179910545689/"
        },
        {
            url: "https://www.facebook.com/morncreations/photos/a.141124349251273/2904540296242984/"
        }
    ];
}

