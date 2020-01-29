package charleywong.entities;

class Enneapsy implements Entity {
    public final id = "enneapsy";
    public final name = [
        zh => "九型之家"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.enneapsychology.org"
        },
        {
            url: "https://www.facebook.com/enneapsy/",
            meta: [
                "id" => "685595551517282",
                "about" => "「九型人格專業學院」由林家進博士Dr. Joseph Lam於2002年成立，學院推崇「人格動機分析心理學」為學問之根本，以達致提升個人心靈及心理質素為依歸。",
                "categories" => [
                    "Community",
                    "News personality"
                ],
                "addr" => "九龍太子道西162號華邦商業中心10樓03室",
                "area" => "Kowloon, Hong Kong",
                "email" => "billie@enneapsychology.org",
                "tel" => "62907687"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/enneapsy/videos/543460039732291/"
        },
        {
            url: "https://www.facebook.com/enneapsy/posts/2685230388220445"
        },
        {
            url: "https://www.facebook.com/enneapsy/posts/2281606145249540"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

