package charleywong.entities;

class Bagguys implements Entity {
    public final id = "bagguys";
    public final name = [
        en => "Bagguys"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.bagguyshk.com"
        },
        {
            url: "https://www.facebook.com/bagguys/",
            meta: [
                "id" => "783324055113965",
                "about" => "香港布袋品牌 - Bagguys\n布袋專門店 手寫文字及插畫設計 原創設計布袋\n可訂製\n西九龍中心專門店/葵涌廣場專門店\nWtsapp: +852 9144 9957",
                "categories" => [
                    "Shopping & retail",
                    "Product/service"
                ],
                "addr" => "九龍深水埗西九龍中心7樓蘋果商場7002-7003號舖",
                "area" => "Hong Kong",
                "email" => "bagguyshk@gmail.com",
                "tel" => "55423544"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bagguys/posts/2658790890900596"
        },
        {
            url: "https://www.facebook.com/bagguys/photos/a.835367909909579/2503193706460316/"
        }
    ];
    public final tags:Array<Tag> = [];
}

