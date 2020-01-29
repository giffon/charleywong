package charleywong.entities;

class Rougengfan implements Entity {
    public final id = "rougengfan";
    public final name = [
        zh => "台灣羅東肉焿番（香港）"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/rougengfan/",
            meta: [
                "id" => "276055546072758",
                "categories" => [
                    "Taiwanese restaurant",
                    "Diner"
                ],
                "addr" => "元朗鳳翔路69號建輝大廈地下5號舖",
                "area" => "Hong Kong",
                "email" => "rougengfanhk@yahoo.com",
                "tel" => "61125353"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rougengfan/posts/1037331879945117"
        },
        {
            url: "https://www.facebook.com/rougengfan/photos/a.335697416775237/1011254769219495/"
        }
    ];
    public final tags:Array<Tag> = [];
}

