package charleywong.entities;

class Kahandcraft implements Entity {
    public final id = "kahandcraft";
    public final name = [
        zh => "嘉·手作"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://carolarttherapy.wix.com/ka-handcraft"
        },
        {
            url: "https://www.facebook.com/kahandcraft/",
            meta: [
                "id" => "1706406996264239",
                "about" => "嘉·手作所有手作製品全為人手製作，所有售得之款項將全數撥捐「深晴藝術治療協會」（非牟利社團組織）以資助基層家庭心理輔導費用",
                "categories" => [
                    "Product/service"
                ],
                "email" => "sweetheart_carol@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kahandcraft/posts/2506964549541809"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

