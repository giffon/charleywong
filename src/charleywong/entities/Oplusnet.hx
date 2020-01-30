package charleywong.entities;

class Oplusnet implements Entity {
    public final id = "oplusnet";
    public final name = [
        en => "Oplusnet"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oplusnet/",
            meta: [
                "about" => "O+Net,\nO for Original, Orgonite.\nOrgonite (乙太能量石)在外國是一樣十分流行的靈修水晶, Orgonite能夠吸收 人體的負能量及負磁場再轉化為正能量及正磁場, 再配合唔同的水晶 可以把Orgonite的能量提升.",
                "categories" => [
                    "Jewellery/watches"
                ],
                "id" => "1665304457051803"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oplusnet/photos/a.1668994333349482/2531323950449845/"
        },
        {
            url: "https://www.facebook.com/oplusnet/posts/2513788698870037"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

