package charleywong.entities;

class UnaDesignStore implements Entity {
    public final id = "unadesign.store";
    public final name = [
        en => "Una.Design Store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/unadesign.store/",
            meta: [
                "about" => "手造的感覺與溫度，於生活日常作連結。不安於單一所以用雙手接觸和製造更多可能；卻喜歡唯一的事物，世界上獨一無二的你。",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "email" => "unadesign.store@gmail.com",
                "id" => "1734758320172799"
            ]
        },
        {
            url: "https://www.instagram.com/unadesign.store/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/unadesign.store/photos/a.1758124234502874/2403234009991890/"
        }
    ];
    public final tags:Array<Tag> = [];
}

