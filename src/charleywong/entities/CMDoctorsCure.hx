package charleywong.entities;

class CMDoctorsCure implements Entity {
    public final id = "CMDoctorsCure";
    public final name = [
        zh => "本草匡時"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CMDoctorsCure/",
            meta: [
                "about" => "由有志關懷香港社會及業界發展的香港註冊中醫師組成，中醫專業組織。",
                "categories" => [
                    "Non-governmental organisation (NGO)"
                ],
                "id" => "463569550520732"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CMDoctorsCure/posts/1111836985693982"
        }
    ];
    public final tags:Array<Tag> = [];
}

