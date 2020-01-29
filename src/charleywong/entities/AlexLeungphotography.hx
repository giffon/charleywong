package charleywong.entities;

class AlexLeungphotography implements Entity {
    public final id = "alexleungphotography";
    public final name = [
        en => "Alex Leung photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/alexleungphotography/",
            meta: [
                "id" => "662806617147562",
                "about" => "Alex Leung Photography .婚纱相、婚禮拍攝拍攝服務。電話96431551 email:alphotography623@yahoo.com.hk",
                "categories" => [
                    "Professional service"
                ],
                "email" => "alphotography623@yahoo.com.hk",
                "tel" => "96431551"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/alexleungphotography/posts/2555848457843359"
        }
    ];
    public final tags:Array<Tag> = [];
}

