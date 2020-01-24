package charleywong.entities;

class InfiniteHairStudio implements Entity {
    public final id = "infinite.hk";
    public final name = [
        en => "Infinite Hair Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://infinitehairstudiohk.wixsite.com/infinitehairstudiohk"
        },
        {
            url: "https://www.facebook.com/infinite.hk/",
            meta: [
                "id" => "108673950543654",
                "about" => "INFINITE\n亦即解作 無限 無窮 無盡\n打破固有 理念 想像 創作\n頭髮 不應被框架所限制在內",
                "categories" => [
                    "Art"
                ],
                "email" => "infinite.hairstudiohk@gmail.com",
                "tel" => "98142760"
            ]
        },
        {
            url: "https://www.instagram.com/infinitehairstudiohk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/infinite.hk/photos/a.122451752499207/144764013601314/"
        },
        {
            url: "https://www.facebook.com/infinite.hk/photos/a.122451752499207/136621127748936/"
        }
    ];
}

