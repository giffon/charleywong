package charleywong.entities;

class SingWedding implements Entity {
    public final id = "singwedding";
    public final name = [
        en => "SingWedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://singwedding2016.com"
        },
        {
            url: "https://www.facebook.com/singwedding/",
            meta: [
                "id" => "1579108869013549",
                "about" => "Singwedding ::\n美是一種自然的表達,\n無需刻意去創造 ::",
                "categories" => [
                    "Artist"
                ],
                "email" => "singphotography2012@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/singwedding/photos/a.2465726300351797/2465726183685142/"
        }
    ];
    public final tags:Array<Tag> = [];
}

