package charleywong.entities;

class MatinaLeung implements Entity {
    public final id = "matinaleung.comedian";
    public final name = [
        en => "Matina Leung"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/matinaleung.comedian/",
            meta: [
                "id" => "1657372854538305",
                "about" => "Matina Leung comedian",
                "categories" => [
                    "Comedian"
                ],
                "email" => "matina.leung@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/matinaleung.comedian/posts/2381906095418307"
        },
        {
            url: "https://www.facebook.com/matinaleung.comedian/posts/2468476716761244"
        }
    ];
    public final tags:Array<Tag> = [];
}

