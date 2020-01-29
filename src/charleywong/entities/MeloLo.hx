package charleywong.entities;

class MeloLo implements Entity {
    public final id = "imlmelo";
    public final name = [
        en => "Melo Lo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/user/melosuisui"
        },
        {
            url: "https://www.facebook.com/imlmelo/",
            meta: [
                "id" => "1415570052007433",
                "about" => "Melo Lo\nBeauty , Fashion & Lifestyle Blogger & YouTube creator\nhttp://www.youtube.com/user/melosuisui...\n\n\n\n\nSee more",
                "categories" => [
                    "Public figure"
                ],
                "email" => "melosuisui@yahoo.com.hk"
            ]
        },
        {
            url: "https://www.instagram.com/imlmelo/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/imlmelo/photos/a.1415585602005878/2523631277867966/"
        },
        {
            url: "https://www.facebook.com/imlmelo/posts/2558799811017779"
        },
        {
            url: "https://www.facebook.com/imlmelo/posts/2558890864342007"
        }
    ];
    public final tags:Array<Tag> = [];
}

