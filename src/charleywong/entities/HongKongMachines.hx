package charleywong.entities;

class HongKongMachines implements Entity {
    public final id = "HongKongMachines";
    public final name = [
        zh => "香港重機"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HongKongMachines/",
            meta: [
                "id" => "227704988075485",
                "about" => "Illustrations of our Home Town, Hong Kong.",
                "categories" => [
                    "Art",
                    "Designer",
                    "Artist"
                ],
                "email" => "felixxip@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HongKongMachines/photos/a.233278510851466/579042919608355/"
        },
        {
            url: "https://www.facebook.com/HongKongMachines/photos/a.233278510851466/512415489604432/"
        },
        {
            url: "https://www.facebook.com/HongKongMachines/posts/510682819777699"
        },
        {
            url: "https://www.facebook.com/HongKongMachines/posts/510633869782594"
        },
        {
            url: "https://www.facebook.com/HongKongMachines/posts/501401834039131"
        }
    ];
    public final tags:Array<Tag> = [];
}

