package charleywong.entities;

class Revengehi implements Entity {
    public final id = "revengehi";
    public final name = [
        zh => "專業清算師"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/revengehi/",
            meta: [
                "id" => "107843517256427",
                "about" => "若非此時，更待何時？若非我們，更待何人？受時代感召，我們匯聚來自各行各業的香港人，期以專業知識揭露時弊，超合法督促政府嚴正執法，捍衛普羅大眾權益。 和勇並肩，煲底見！",
                "categories" => [
                    "Blogger"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/revengehi/photos/a.143361317037980/169920717715373/"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        publicfigure
    ];
}

