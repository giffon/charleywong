package charleywong.entities;

class Btgallery implements Entity {
    public final id = "btgallery";
    public final name = [
        zh => "突破書廊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/btgallery/",
            meta: [
                "about" => "佐敦店(tel. 2377 8592)\n村門店(tel. 2632 0715)",
                "categories" => [
                    "Non-profit organisation",
                    "Cultural gift shop",
                    "Book shop"
                ],
                "addr" => "九龍佐敦吳松街191號突破中心地下",
                "area" => "Tsim Sha Tsui",
                "email" => "btg@breakthrough.org.hk",
                "tel" => "23778592",
                "id" => "107259426001453"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/breakthrough.hk/photos/a.155973147787233/2829354450449076"
        }
    ];
}

