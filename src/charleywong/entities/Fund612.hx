package charleywong.entities;

class Fund612 implements Entity {
    public final id = "612Fund";
    public final name = [
        en => "612 Humanitarian Relief Fund",
        zh => "612人道支援基金"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://612Fund.hk"
        },
        {
            url: "https://www.facebook.com/612Fund/",
            meta: [
                "id" => "368482457185258",
                "about" => "612人道支援基金是為所有反送中運動中受傷、被捕人士，提供醫療費用、心理/精神輔導費用，法律費用及其他有關援助等人道支援。\n信託人：陳日君、吳靄儀、許寶強、何秀蘭及何韻詩",
                "categories" => [
                    "Social service",
                    "Community",
                    "Non-profit organisation"
                ],
                "email" => "info@612fund.hk",
                "tel" => "98456641"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/612Fund/posts/504805746886261"
        },
        {
            url: "https://www.facebook.com/612Fund/posts/471746430192193"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

