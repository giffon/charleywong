package charleywong.entities;

class ChickenPotHutYL implements Entity {
    public final id = "ChickenPotHutYL";
    public final name = [
        zh => "雞煲棧 元朗"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.openrice.com/en/hongkong/restaurant/yuen-long-chicken-pot-hut/173545"
        },
        {
            url: "https://www.facebook.com/ChickenPotHutYL/",
            meta: [
                "id" => "1658431671103494",
                "about" => "雞煲棧(元朗) 至\"Fresh\"的火鍋店\n\n\"Fresh\"=新鮮, 火鍋店的食材最重要是新鮮味美\n\"Fresh\"=創新, 以創新的菜式為客人帶來嶄新的餐飲體驗\n\"Fresh\"=朝氣, 員工均以最佳狀態用心服務每位客人",
                "categories" => [
                    "Fondue restaurant",
                    "Deli",
                    "Cantonese restaurant"
                ],
                "addr" => "元朗媽橫路21-43號地下11號舖",
                "area" => "Hong Kong",
                "email" => "chickenpothut@gmail.com",
                "tel" => "21421618"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ChickenPotHutYL/photos/a.1776119252668068/2574100716203247/"
        },
        {
            url: "https://www.facebook.com/ChickenPotHutYL/photos/a.1776119252668068/2554857488127570/"
        },
        {
            url: "https://www.facebook.com/ChickenPotHutYL/posts/2505057769774209"
        }
    ];
}

