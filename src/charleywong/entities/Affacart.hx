package charleywong.entities;

class Affacart implements Entity {
    public final id = "affacart";
    public final name = [
        en => "Affa C Art",
        zh => "阿凡塵繪"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/affacart/",
            meta: [
                "id" => "803263786377348",
                "about" => "無睇過Arthur C. Clarke的Affa C Art",
                "categories" => [
                    "Artist",
                    "Painting Lessons"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/affacart/photos/a.806124306091296/2313548142015564/"
        },
        {
            url: "https://www.facebook.com/affacart/posts/2235044176532628"
        },
        {
            url: "https://www.facebook.com/affacart/photos/a.874111279292598/2234997829870596/"
        },
        {
            url: "https://www.facebook.com/affacart/photos/a.806124306091296/2216310878405958/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

