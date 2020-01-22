package charleywong.entities;

class ChangchangGoodstore implements Entity {
    public final id = "ChangchangGoodstore";
    public final name = [
        zh => "常常集品",
        en => "Changchang Goodstore"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/337576013115691/",
            meta: [
                "about" => "常常集品由兩位喜愛搜集好物的設計師成立，喜愛旅行拜訪當地特色小店和市集，集以為常，帶回生活日常的雜貨到小店或市集擺賣，分享故事，分享美好。",
                "categories" => [
                    "Arts and crafts shop",
                    "Grocers"
                ],
                "id" => "337576013115691"
            ]
        },
        {
            url: "https://www.instagram.com/changchang_goodstore/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=1250303938509556&id=337576013115691"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=1128396097367008&id=337576013115691"
        }
    ];
}

