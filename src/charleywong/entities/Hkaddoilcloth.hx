package charleywong.entities;

class Hkaddoilcloth implements Entity {
    public final id = "hkaddoilcloth";
    public final name = [
        zh => "香港加油-小布條"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkaddoilcloth/",
            meta: [
                "about" => "自2019年6月9日開始，香港成為一個世人眼中的抗爭之都，香港人粉粉群起反抗，有勇武、有前線、有和理非，不同群體用自己的方式去支持這場運動，我也是其中一員。",
                "categories" => [
                    "Event"
                ],
                "id" => "100870988051549"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkaddoilcloth/posts/116815759790405"
        },
        {
            url: "https://www.facebook.com/hkaddoilcloth/photos/a.100912644714050/127064758765505/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

