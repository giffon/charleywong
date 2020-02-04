package charleywong.entities;

class Bottleshiukachun implements Entity {
    public final id = "bottleshiukachun";
    public final name = [
        zh => "邵家臻"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.shiukachun.org.hk"
        },
        {
            url: "https://www.facebook.com/bottleshiukachun/",
            meta: [
                "id" => "148053572047302",
                "about" => "社福界立法會議員/浸大社工系講師/社工復興運動發起人/我信基督，不信基督教/屋邨仔，在石蔭村長大/雨傘人/貓型人/進步社會工作學派",
                "categories" => [
                    "Politician"
                ],
                "email" => "info@shiukachun.org.hk",
                "tel" => "23468669"
            ]
        },
        {
            url: "https://www.instagram.com/bottleoffice1018/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bottleshiukachun/photos/a.148060658713260/1097723660413617/"
        },
        {
            url: "https://www.facebook.com/bottleshiukachun/posts/1174052942780688"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

