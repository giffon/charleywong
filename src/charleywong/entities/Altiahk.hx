package charleywong.entities;

class Altiahk implements Entity {
    public final id = "altiahk";
    public final name = [
        zh => "文學少年的房間II"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://medium.com/@Altia"
        },
        {
            url: "https://www.facebook.com/altiahk/",
            meta: [
                "id" => "507147619327859",
                "about" => "寫動漫感想的阿宅。\n\nBlog @https://medium.com/@Altia\n有意邀稿請 Direct Message 或電郵 thepuzzlehouse@hotmail.com",
                "categories" => [
                    "Author",
                    "Entertainment website"
                ],
                "email" => "thepuzzlehouse@hotmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/altiahk/posts/3336744343034825"
        }
    ];
    public final tags:Array<Tag> = [];
}

