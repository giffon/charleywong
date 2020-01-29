package charleywong.entities;

class CherriellaWedding implements Entity {
    public final id = "CherriellaWedding";
    public final name = [
        en => "Cherriella Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CherriellaWedding/",
            meta: [
                "id" => "422685147815651",
                "about" => "我們能為你提供 本地及海外婚禮婚及紗攝影及錄影, 孕婦拍攝等不同攝影服務 ！\n攝影師 Ben 有超過15年拍攝經驗, 奪得多個本地及海外攝影比賽獎項, 藝人黃長興 、楊潮凱的婚禮攝影師 。",
                "categories" => [
                    "Wedding planning service",
                    "Business service",
                    "Photographer"
                ],
                "addr" => "Room B1D, 13/F, Manning Industrial Bldg, 116-118 How Ming Street, Kwun Tong",
                "area" => "Kwun Tong",
                "email" => "cherriellawedding@gmail.com",
                "tel" => "96418193"
            ]
        },
        {
            url: "https://www.instagram.com/cherriella_story_telling/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CherriellaWedding/photos/a.426643980753101/2551920858225392/"
        },
        {
            url: "https://www.facebook.com/CherriellaWedding/photos/a.423883114362521/2547892991961512/"
        }
    ];
    public final tags:Array<Tag> = [];
}

