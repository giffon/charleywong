package charleywong.entities;

class Milktealogy implements Entity {
    public final id = "milktealogy";
    public final name = [
        zh => "奶茶通俗學",
        en => "Milktealogy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/milktealogy/",
            meta: [
                "about" => "由崔氏兄弟Haze & Long主理\n一個以香港以至世界奶茶文化作硏究目標的文字插圖創作項目。\nJob enquires: milktealogy@gmail.com",
                "categories" => [
                    "Book",
                    "Public figure"
                ],
                "email" => "milktealogy@gmail.com",
                "id" => "283655665125356"
            ]
        },
        {
            url: "https://www.instagram.com/milktealogy/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/milktealogy/posts/1432366243587620"
        },
        {
            url: "https://www.facebook.com/milktealogy/posts/1424448944379350"
        },
        {
            url: "https://www.facebook.com/milktealogy/photos/a.285670224923900/1395304063960505/"
        },
        {
            url: "https://www.facebook.com/milktealogy/photos/a.286601201497469/1331545517003027/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

