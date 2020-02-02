package charleywong.entities;

class Crazycatsss implements Entity {
    public final id = "3crazycatsss";
    public final name = [
        zh => "三貓黨"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/3crazycatsss/",
            meta: [
                "id" => "160377947770807",
                "about" => "無定向胡亂塗鴉~",
                "categories" => [
                    "Personal blog",
                    "Product/service",
                    "Arts and entertainment"
                ],
                "addr" => "B 39, 368 Lockhart Road",
                "area" => "Hong Kong",
                "email" => "kennytangworkshop@gmail.com",
                "tel" => "92029200"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/3crazycatsss/photos/a.293984184410182/742775589531037/"
        },
        {
            url: "https://www.facebook.com/3crazycatsss/photos/a.293984184410182/638219476653316/"
        },
        {
            url: "https://www.facebook.com/3crazycatsss/photos/a.293984184410182/635678786907385/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

