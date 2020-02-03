package charleywong.entities;

class Lobintanfanclub implements Entity {
    public final id = "lobintan.fanclub";
    public final name = [
        zh => "路邊攤",
        en => "Lobintan"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.lobintan.com"
        },
        {
            url: "https://www.facebook.com/lobintan.fanclub/",
            meta: [
                "id" => "203557826156",
                "about" => "香港繪本作家路邊攤，作品惹笑、溫馨、純真、常常碰釘與及\"懶\"為主題的快樂人生觀吸引了不少少男少女及OL歡迎！",
                "categories" => [
                    "Public figure"
                ],
                "email" => "lobintan@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/lobintanworkshop/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lobintan.fanclub/photos/a.203590746156/10155992918451157/"
        },
        {
            url: "https://www.facebook.com/lobintan.fanclub/posts/10155982326886157"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

