package charleywong.entities;

class Kellyiflower implements Entity {
    public final id = "kelly.i.flower";
    public final name = [
        zh => "保鮮花工作坊",
        en => "Kelly i Flower"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kelly.i.flower/",
            meta: [
                "about" =>
                "Kelly 在2014於日本AUBE Preserved Academy 保鮮花協會畢業，並為AUBE協會(香港區)首位講師\n\nWHATSAPP: （852）62005654\nE MAIL:kelly.i.flower@gmail.com\nINSTAGRAM: kelly_i_flower",
                "categories" => [
                    "Gift shop",
                    "Wedding planning service",
                    "Photography & videography"
                ],
                "addr" => "Lai Cheong Ind. Bldg.,",
                "area" => "Cheung Sha Wan, Hong Kong",
                "email" => "kelly.i.flower@gmail.com",
                "tel" => "62005654",
                "id" => "350137718494633"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kelly.i.flower/photos/a.371106449731093/1380964598745268/"
        },
        {
            url: "https://www.facebook.com/kelly.i.flower/photos/a.371106449731093/1537734679734925/"
        },
        {
            url: "https://www.facebook.com/kelly.i.flower/photos/a.371106449731093/1533543973487329/"
        }
    ];
    public final tags:Array<Tag> = [];
}

