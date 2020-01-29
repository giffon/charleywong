package charleywong.entities;

class Bukapo implements Entity {
    public final id = "bukapo";
    public final name = [
        zh => "宇宙角落"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bukapo/",
            meta: [
                "about" => "你好，我是嘉寶，\n畢業於香港理工大學設計學院視覺及傳意系，\n過著斜槓生活，喜歡畫醜美畫，\n透過創作，可以發揮我很賤的本性。",
                "categories" => [
                    "Personal blog"
                ],
                "email" => "ngkapo@hotmail.com",
                "id" => "316181601770392"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bukapo/photos/a.460658543989363/2521229421265588/"
        },
        {
            url: "https://www.facebook.com/bukapo/photos/a.460658543989363/2514936425228221/"
        },
        {
            url: "https://www.facebook.com/bukapo/photos/a.460658543989363/2412429035478961/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

