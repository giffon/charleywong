package charleywong.entities;

class LumliLumlong implements Entity {
    public final id = "LumliLumlong";
    public final name = [
        zh => "淋漓淋浪"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/lumlilumlong/"
        },
        {
            url: "https://www.facebook.com/LumliLumlong/",
            meta: [
                "id" => "513051452376744",
                "about" => "香港電台《好想藝術》【淋漓、淋浪】\nhttps://www.youtube.com/watch?v=qKdeePZE2yc",
                "categories" => [
                    "Artist",
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LumliLumlong/photos/a.587613794920509/1044403305908220/"
        },
        {
            url: "https://www.facebook.com/LumliLumlong/posts/783737565308130"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

