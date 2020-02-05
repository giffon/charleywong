package charleywong.entities;

class InsuranceARISE implements Entity {
    public final id = "InsuranceARISE";
    public final name = [
        zh => "保險起動",
        en => "Insurance ARISE"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://t.me/insuranceARISEchannel"
        },
        {
            url: "https://www.facebook.com/InsuranceARISE/",
            meta: [
                "id" => "475458155963208",
                "about" => "保險起動提供業界政見表達平台，推動香港民主發展。",
                "categories" => [
                    "Community",
                    "Political organisation"
                ],
                "email" => "insurancearise@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/insurancearise/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/InsuranceARISE/posts/1391078424401172"
        },
        {
            url: "https://www.facebook.com/InsuranceARISE/posts/1350012918507723"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

