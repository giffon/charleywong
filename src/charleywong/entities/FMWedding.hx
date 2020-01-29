package charleywong.entities;

class FMWedding implements Entity {
    public final id = "fmweddinghk";
    public final name = [
        en => "FM Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fmweddinghk/",
            meta: [
                "id" => "230048367182677",
                "about" => "業界13年，從心出發\n打造每位展現獨特的美\n專業新娘姊妹親戚化妝，訂造姊妹晚裝裙...\n\n\n\n\nSee more",
                "categories" => [
                    "Bridal shop",
                    "Makeup artist"
                ],
                "addr" => "富華工業大廈",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "fm.wedding@yahoo.com",
                "tel" => "92201168"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fmweddinghk/photos/a.230054233848757/1277251222462381/"
        }
    ];
    public final tags:Array<Tag> = [
        bridal,
        makeup,
    ];
}

