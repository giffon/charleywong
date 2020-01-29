package charleywong.entities;

class Enlightenedhealers implements Entity {
    public final id = "enlightenedhealers";
    public final name = [
        zh => "杏林覺醒",
        en => "Médecins Inspirés"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/enlightenedhealers/",
            meta: [
                "about" => "醫學界政改及普選關注組 – 杏林覺醒\n\n有興趣投稿的醫生，請把稿件寄往 unisuffragehk@gmail.com",
                "categories" => [
                    "Community"
                ],
                "id" => "660395087411698"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/enlightenedhealers/posts/2568869373230917"
        }
    ];
    public final tags:Array<Tag> = [];
}

