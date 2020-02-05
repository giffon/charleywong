package charleywong.entities;

class Deli365 implements Entity {
    public final id = "365DeliHK";
    public final name = [
        en => "365 Deli"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/365DeliHK/",
            meta: [
                "id" => "830291537061085",
                "about" => "我們是一家在葵涌石籬區打滾了十多年的小商戶，由零食飲品小食至湯粉麵飯皆有供應。\n小店有美味非常的串燒 脆炸雞扒及薯條 有機會到石籬的話 請過來一嚐365 小食部 的精髓呀!!",
                "categories" => [
                    "Food stall",
                    "Restaurant"
                ],
                "addr" => "大白田街29號",
                "area" => "Hong Kong",
                "tel" => "23201660"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/365DeliHK/photos/a.842092649214307/2670500556373498/"
        },
        {
            url: "https://www.facebook.com/365DeliHK/photos/a.842092649214307/2374325939324296/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

