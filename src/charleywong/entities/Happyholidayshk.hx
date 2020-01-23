package charleywong.entities;

class Happyholidayshk implements Entity {
    public final id = "happyholidayshk";
    public final name = [
        zh => "香港幸福週末"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/happyholidayshk/",
            meta: [
                "id" => "599170417181008",
                "about" => "假日像甜品一般，回憶時濃厚醇香微暖黏韌。\n飲入口的甜品，讓每天都記住週末的輕鬆幸福。\n幸福週末，由這裏開始。",
                "categories" => [
                    "Restaurant supply shop"
                ],
                "tel" => "27720880"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/happyholidayshk/photos/a.608979529533430/863339980764049/"
        },
        {
            url: "https://www.facebook.com/happyholidayshk/photos/a.608979529533430/800322423732472/"
        }
    ];
}

