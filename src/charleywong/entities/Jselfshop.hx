package charleywong.entities;

class Jselfshop implements Entity {
    public final id = "jselfshop";
    public final name = [
        zh => "JS 的精靈小店",
        en => "JS\'s Elf Shop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jselfshop/",
            meta: [
                "about" => "從前有一個童話故事，故事裡有一個精靈世界。精靈們都很喜歡從人間帶走閃閃亮亮的飾品回家裝飾自己…",
                "categories" => [
                    "Jewellery/watches"
                ],
                "id" => "271849669656300"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jselfshop/posts/1371198186388104"
        },
        {
            url: "https://www.facebook.com/jselfshop/posts/1363649377142985"
        }
    ];
}

