package charleywong.entities;

class TopBladeSteakLab implements Entity {
    public final id = "topbladesteaklab";
    public final name = [
        en => "Top Blade Steak Lab"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.topbladesteak.com"
        },
        {
            url: "https://www.facebook.com/topbladesteaklab/",
            meta: [
                "about" => "HMT:\n4A Soares Ave, Ho Man Tin / Mong Kok East\n+852 3956 2011...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Steakhouse"
                ],
                "id" => "194958111014370"
            ]
        },
        {
            url: "https://www.instagram.com/topbladesteaklab/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/topbladesteaklab/posts/773033616540147"
        },
        {
            url: "https://www.facebook.com/topbladesteaklab/posts/761532861023556"
        }
    ];
}

