package charleywong.entities;

class UrbanCamper implements Entity {
    public final id = "urbancamperhk";
    public final name = [
        en => "Urban Camper"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/urbancamperhk/",
            meta: [
                "about" => "We rent camping gear to let urban campers explore the city in an easy way.\n我們透過租借露營用具，讓你自在地在城中尋幽探秘。\n\n//WE CAMP WE EXPLORE//",
                "categories" => [
                    "Sport & recreation",
                    "Local & travel website"
                ],
                "email" => "urbancamperhk@gmail.com",
                "id" => "750548808411466"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/urbancamperhk/posts/1621668064632865"
        },
        {
            url: "https://www.facebook.com/urbancamperhk/photos/a.752744841525196/1774085639391106/"
        },
        {
            url: "https://www.facebook.com/urbancamperhk/photos/a.786210694845277/1747032162096454/"
        }
    ];
    public final tags:Array<Tag> = [];
}

