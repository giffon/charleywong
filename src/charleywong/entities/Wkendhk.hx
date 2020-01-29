package charleywong.entities;

class Wkendhk implements Entity {
    public final id = "wkend.official";
    public final name = [
        en => "Wkendhk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wkend.official/",
            meta: [
                "id" => "1898946817007431",
                "about" => "Official page of WKEND\nSharing what we love.\n�#駐場音樂表演 #婚禮樂隊 #求婚...\n\n\nSee more",
                "categories" => [
                    "Wedding planning service",
                    "Musician/band",
                    "Band"
                ],
                "email" => "wkend.official@gmail.com",
                "tel" => "51190176"
            ]
        },
        {
            url: "https://www.instagram.com/wkend_official/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wkend.official/photos/a.1898956033673176/2508886086013498/"
        },
        {
            url: "https://www.facebook.com/wkend.official/posts/2503849869850453"
        }
    ];
    public final tags:Array<Tag> = [];
}

