package charleywong.entities;

class BullDogHotDog implements Entity {
    public final id = "BullDogHotDogHK";
    public final name = [
        en => "BullDog HotDog"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BullDogHotDogHK/",
            meta: [
                "id" => "163898654475871",
                "about" => "BDHD熱狗專門店，致力為大家提供高品質美食。\n每隻熱狗均用上8吋長的法蘭克福腸製作。除了提供傳統熱狗以外，更有各種不同風味的熱狗。在傳統基礎下配合秘製醬汁創作出嶄新的口味。",
                "categories" => [
                    "Hot Dog Joint",
                    "Fast food restaurant"
                ],
                "addr" => "大埔廣福道60-62號C鋪",
                "area" => "Tai Po Industrial Estate",
                "email" => "bulldoghotdog2018@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BullDogHotDogHK/photos/a.172921413573595/524288775103522/"
        },
        {
            url: "https://www.facebook.com/BullDogHotDogHK/videos/186054389128370/"
        },
        {
            url: "https://www.facebook.com/BullDogHotDogHK/posts/501696040696129"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

