package charleywong.entities;

class AshleyHappinessHandicraftKitchen implements Entity {
    public final id = "AshleyHappinessHandicraft";
    public final name = [
        en => "Ashley Happiness Handicraft & Kitchen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AshleyHappinessHandicraft/",
            meta: [
                "id" => "364149837019856",
                "about" => "手多多 心思思\n我的DIY小王國 ^^",
                "categories" => [
                    "Personal blog",
                    "Kitchen/Cooking",
                    "Wedding planning service"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/ashleyhappinesshandk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AshleyHappinessHandicraft/posts/2149410115160477"
        }
    ];
    public final tags:Array<Tag> = [];
}

