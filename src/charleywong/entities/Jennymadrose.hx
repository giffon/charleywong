package charleywong.entities;

class Jennymadrose implements Entity {
    public final id = "jennymadrose";
    public final name = [
        en => "jennymadrose"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jennymadrose/",
            meta: [
                "about" => "對症下藥，嚴格選材\n對材料深入研究，選取最適合的原材料手造護膚品，不會因為天然或有機便盲從使用；我們同時自種時令有機草藥，使自己用得更安心。",
                "categories" => [
                    "Beauty supply shop",
                    "Organic food shop",
                    "Skincare service"
                ],
                "email" => "jennymadrose@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/jennymadrose/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jennymadrose/posts/1178193752382250"
        },
        {
            url: "https://www.facebook.com/jennymadrose/posts/1240615479473410"
        },
        {
            url: "https://www.facebook.com/jennymadrose/posts/1270315139836777"
        }
    ];
}

