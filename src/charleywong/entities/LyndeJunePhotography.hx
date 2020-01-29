package charleywong.entities;

class LyndeJunePhotography implements Entity {
    public final id = "LynDeJune";
    public final name = [
        en => "Lyn de June Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.LynDeJune.com"
        },
        {
            url: "https://www.facebook.com/LynDeJune/",
            meta: [
                "id" => "394867163934331",
                "about" => "June, the goddess of womanhood, of marriage and of maternity",
                "categories" => [
                    "Photographer"
                ],
                "email" => "info@lyndejune.com",
                "tel" => "55963950"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LynDeJune/photos/a.1684943184926716/2540291006058592/"
        },
        {
            url: "https://www.facebook.com/LynDeJune/photos/a.1684943184926716/2351129448308083/"
        }
    ];
    public final tags:Array<Tag> = [];
}

