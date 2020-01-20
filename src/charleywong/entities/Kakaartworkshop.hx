package charleywong.entities;

class Kakaartworkshop implements Entity {
    public final id = "kaka.artworkshop";
    public final name = [
        zh => "嘉嘉姐姐小教室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kaka.artworkshop/",
            meta: [
                "about" => "視藝創作班, 兒童畫班, 成人手作工作坊，藝術治療，心理輔導, 和諧粉彩，心靈拼貼，circle painting, 成人畫班，成人視藝課程， Decoupage, 拼貼課程, 手作工作坊，機構教學",
                "categories" => [
                    "Psychotherapist",
                    "Art school"
                ],
                "addr" => "九龍觀塘興業街12號永泰中心7樓A18室",
                "area" => "Kowloon Bay, Hong Kong",
                "email" => "info@kaka-arttherapy.org"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kaka.artworkshop/photos/a.326516310769013/2643210875766200/"
        },
        {
            url: "https://www.facebook.com/kaka.artworkshop/posts/2655709057849715"
        }
    ];
}

