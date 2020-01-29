package charleywong.entities;

class Cheese123production implements Entity {
    public final id = "123cheeseproduction";
    public final name = [
        en => "123cheese production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.123cheese.net"
        },
        {
            url: "https://www.facebook.com/123cheeseproduction/",
            meta: [
                "id" => "551531118202683",
                "about" =>
                "當攝影遊走在當代與人文之間， 婚攝世界本應可以很遼闊⋯⋯草\nIG /123cheese_production\nwww.123cheese.net\n1st ,3rd Place WPPI Award Winning Hong kong Wedding Photographer - Grass Tso",
                "categories" => [
                    "Photographer",
                    "Camera/photo",
                    "Event videographer"
                ],
                "addr" => "Flat 1805, 18/F, WANG CHEONG ENTERPRISES CENTRE, 65-69 CHAI WAN KOK STREET, TSUEN WAN, N.T.",
                "area" => "Hong Kong",
                "email" => "next123cheese@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/123cheeseproduction/posts/2614359461919828"
        },
        {
            url: "https://www.facebook.com/123cheeseproduction/photos/a.551547771534351/2604402106248897/"
        }
    ];
    public final tags:Array<Tag> = [];
}

