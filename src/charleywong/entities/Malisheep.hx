package charleywong.entities;

class Malisheep implements Entity {
    public final id = "malisheep";
    public final name = [
        zh => "麻利有隻小綿羊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/malisheep/",
            meta: [
                "id" => "318717085099",
                "about" => "叱咤903節目主持，逢星期一至星期五下午三點【口水多過浪花】；星期日下午五點有探討身心靈節目 Mali Mali Home。",
                "categories" => [
                    "Public figure"
                ],
                "email" => "malihasalittlelamb@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/malisheep/posts/10157008977145100"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

