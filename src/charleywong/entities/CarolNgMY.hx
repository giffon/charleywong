package charleywong.entities;

class CarolNgMY implements Entity {
    public final id = "CarolNgMY";
    public final name = [
        zh => "吳敏兒",
        en => "Carol Ng"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CarolNgMY/",
            meta: [
                "id" => "101234900633325",
                "about" => "這個社會所有的價值在一點一滴地消失， 如果連自己的僅有的一份也不悍衛， 我們還剩下什麼？",
                "categories" => [
                    "Public figure"
                ],
                "tel" => "27708668"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CarolNgMY/posts/613077426115734"
        },
        {
            url: "https://www.facebook.com/CarolNgMY/photos/a.111774972912651/494375717985906/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

