package charleywong.entities;

class Oneintwo implements Entity {
    public final id = "1in2oneintwo";
    public final name = [
        zh => "壹雙雜貨店",
        en => "1 in 2 Zakka"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://1in2zakka.com"
        },
        {
            url: "https://www.facebook.com/1in2oneintwo/",
            meta: [
                "id" => "1716186928662018",
                "about" => "壹雙雜貨店2.0正式開幕",
                "categories" => [
                    "Local service"
                ],
                "email" => "oneintwo222@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/one.in.two/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/1in2oneintwo/photos/a.1928393214108054/2591417384472297/"
        },
        {
            url: "https://www.facebook.com/1in2oneintwo/photos/a.1926082611005781/2587971111483591/"
        }
    ];
    public final tags:Array<Tag> = [];
}

