package charleywong.entities;

class Doctorlmtang implements Entity {
    public final id = "doctorlmtang";
    public final name = [
        zh => "永健堂中醫診所"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/doctorlmtang/",
            meta: [
                "id" => "228829827272326",
                "about" => "1，新界沙田穗禾路13號穗禾苑商場G30號舖\n2，香港筲箕灣耀興道12號耀東商場S127號舖\n3，新界屯門海珠路2號海典軒商場UG5號舖\n\n中醫全科，針灸，骨傷，推拿，跌打",
                "categories" => [
                    "Medical centre",
                    "Doctor"
                ],
                "addr" => "沙田穗禾路13號穗禾苑商場G30號舖",
                "area" => "Hong Kong",
                "email" => "wingkintong2013@yahoo.com.hk",
                "tel" => "35802836"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/doctorlmtang/posts/1408102679345029"
        },
        {
            url: "https://www.facebook.com/doctorlmtang/posts/1300280350127263"
        }
    ];
    public final tags:Array<Tag> = [
        medical
    ];
}

