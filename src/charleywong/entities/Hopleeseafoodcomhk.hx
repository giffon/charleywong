package charleywong.entities;

class Hopleeseafoodcomhk implements Entity {
    public final id = "hopleeseafood.com.hk";
    public final name = [
        zh => "合利海鮮批發",
        en => "HOP LEE Seafood"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hopleeseafood.com.hk/",
            meta: [
                "id" => "575657082826491",
                "about" => "專營各類生猛海鮮、凍貨類海產；\n歡迎各大食肆查詢及訂貨。\nInstagram：hoplee_seafood888",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hopleeseafood.com.hk/posts/1003518280040367"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

