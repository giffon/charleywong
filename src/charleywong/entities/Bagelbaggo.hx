package charleywong.entities;

class Bagelbaggo implements Entity {
    public final id = "bagel.baggo";
    public final name = [
        zh => "小圓包",
        en => "Bagel Baggo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bagel.baggo/",
            meta: [
                "about" => "⚪️Made in Hong Kong | 100%本土手作\n⚪️Available in Pinkoi | 新進駐亞洲大型手作平台\n⚪️Ship Worldwide | 全球配送",
                "categories" => [
                    "Website"
                ],
                "id" => "508618516012793"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bagel.baggo/posts/1237133699827934"
        },
        {
            url: "https://www.facebook.com/bagel.baggo/photos/a.508621942679117/1166188156922489/"
        },
        {
            url: "https://www.facebook.com/bagel.baggo/posts/1155278368013468"
        }
    ];
    public final tags:Array<Tag> = [];
}

