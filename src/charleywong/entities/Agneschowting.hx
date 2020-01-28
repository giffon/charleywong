package charleywong.entities;

class Agneschowting implements Entity {
    public final id = "agneschowting";
    public final name = [
        zh => "周庭",
        en => "Agnes Chow Ting"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/agneschowting/",
            meta: [
                "id" => "622506141223354",
                "about" => "周庭，香港眾志成員。\n香港浸會大學政治及國際關係學系學生。\n\nAgnes Chow, member of Demosisto.",
                "categories" => [
                    "Public figure"
                ],
                "email" => "agnes@demosisto.hk"
            ]
        },
        {
            url: "https://www.instagram.com/chowtingagnes/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/agneschowting/posts/1439947142812579"
        },
        {
            url: "https://www.facebook.com/agneschowting/posts/1429429223864371"
        },
        {
            url: "https://www.facebook.com/agneschowting/posts/1452464708227489"
        }
    ];
}

