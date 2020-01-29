package charleywong.entities;

class Inmediahk implements Entity {
    public final id = "inmediahk";
    public final name = [
        zh => "香港獨立媒體網"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.inmediahk.net"
        },
        {
            url: "https://www.facebook.com/inmediahk/",
            meta: [
                "about" => "獨立媒體，屬於公民的媒體。",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "info@inmediahk.net",
                "tel" => "21470788",
                "id" => "200954406608272"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/inmediahk/photos/a.321611837875861/2528749153828774/"
        }
    ];
    public final tags:Array<Tag> = [];
}

