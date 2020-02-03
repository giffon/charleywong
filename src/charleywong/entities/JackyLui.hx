package charleywong.entities;

class JackyLui implements Entity {
    public final id = "jackylui666";
    public final name = [
        en => "Jacky Lui"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/jackylui666/"
        },
        {
            url: "https://www.facebook.com/jackylui666/",
            meta: [
                "id" => "898891990245899",
                "about" => "叱咤903 Jacky\n\n\nLife is about �Band sounds� & Cycling�� �� Let\'s Roll�&Rock�",
                "categories" => [
                    "Performing arts"
                ],
                "email" => "jackylui666@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jackylui666/photos/a.900749216726843/1582203898581368/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

