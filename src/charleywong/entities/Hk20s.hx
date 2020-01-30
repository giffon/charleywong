package charleywong.entities;

class Hk20s implements Entity {
    public final id = "20shk";
    public final name = [
        zh => "20s貳拾年華"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/20shk/",
            meta: [
                "about" => "「當這個世界很浮躁的時候，我們要靜下心來。」\n\n在現代社會充滿著瞬息萬變的流行元素，希望大家能沉心下來，欣賞經得起時光淘瀝的傳統之美，穿著旗袍，拿起相機，細味一些僅餘的香港",
                "categories" => [
                    "Photography & videography"
                ],
                "addr" => "Flat 402, 4/F, Kam On Building, 176A Queen\'s Road, Central, Hong Kong",
                "area" => "Hong Kong",
                "email" => "hello20shk@gmail.com",
                "tel" => "25300181",
                "id" => "1650743438310625"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/20shk/posts/2768283036556654"
        }
    ];
    public final tags:Array<Tag> = [
        photographer
    ];
}

