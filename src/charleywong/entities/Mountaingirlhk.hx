package charleywong.entities;

class Mountaingirlhk implements Entity {
    public final id = "mountaingirlhk";
    public final name = [
        zh => "香港山女",
        en => "Mountain Girl HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mountaingirlhk/",
            meta: [
                "about" => "愛行山‧愛藍天白雲‧愛文字\n山是大家的， #源頭減廢， #自己垃圾自己帶走！希望更多人投入大自然懷抱，細意欣賞之下，香港其實都好靚！",
                "categories" => [
                    "Recreation & sport website"
                ],
                "email" => "hikerhk@mail.com",
                "id" => "1278446655523457"
            ]
        },
        {
            url: "https://www.instagram.com/mountaingirlhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mountaingirlhk/photos/a.1278787888822667/2810343045667136/"
        }
    ];
    public final tags:Array<Tag> = [];
}

