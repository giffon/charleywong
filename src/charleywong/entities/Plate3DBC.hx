package charleywong.entities;

class Plate3DBC implements Entity {
    public final id = "3DPlateBC";
    public final name = [
        zh => "膠牌車長生活&製作記事"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/3DPlateBC/",
            meta: [
                "id" => "324405318283787",
                "about" => "一個車長於工作時的趣聞，同時作為一個製作者的製作生活",
                "categories" => [
                    "Personal blog",
                    "Public service",
                    "Bus line"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/3DPlateBC/photos/a.324409218283397/498356880888629/"
        },
        {
            url: "https://www.facebook.com/3DPlateBC/photos/a.324409218283397/494288824628768/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        media,
        transport
    ];
}

