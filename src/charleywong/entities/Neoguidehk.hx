package charleywong.entities;

class Neoguidehk implements Entity {
    public final id = "neoguidehk";
    public final name = [
        zh => "新時代消費地圖"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://neoguidehk.com"
        },
        {
            url: "https://www.facebook.com/neoguidehk/",
            meta: [
                "id" => "104467950936638",
                "about" => "由 LIHKG 膠花團隊 製作\n大部分財團商家已歸邊, 呼籲減少於大財團旗下商店消費\n盡量幫襯良心店舖\n你份糧就係最強既選票, 你當消費如投票, 咁你就識揀\n支持本土香港商鋪人人有責!",
                "categories" => [
                    "Community",
                    "Shopping service",
                    "Hong Kong restaurant"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/neoguidehk/posts/155637635819669"
        },
        {
            url: "https://www.facebook.com/neoguidehk/posts/174026630647436"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

