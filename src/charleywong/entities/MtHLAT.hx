package charleywong.entities;

class MtHLAT implements Entity {
    public final id = "Mt.HLAT";
    public final name = [
        zh => "山活行旅"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Mt.HLAT/",
            meta: [
                "about" => "上山下海、畫畫創作、到處漂泊、窮著笑著過生活。",
                "categories" => [
                    "Vitamins/supplements"
                ],
                "id" => "1606119459678890"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Mt.HLAT/photos/a.1616046092019560/2202361453388018/"
        },
        {
            url: "https://www.facebook.com/Mt.HLAT/photos/a.1652724738351695/2248544962103000/"
        }
    ];
    public final tags:Array<Tag> = [];
}

