package charleywong.entities;

class TheCoolCousinsCafeNoodleBar implements Entity {
    public final id = "thecoolcousinshk";
    public final name = [
        en => "The Cool Cousins Cafe & Noodle Bar"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thecoolcousinshk/",
            meta: [
                "id" => "356313775000657",
                "about" => "The Cool Cousins 是一家提供西泰式美食的小餐館，菜式包括特色泰式湯麵和頂級西式漢堡。我們所有食材均由原材料開始準備，即叫即製，而過程中不添加任何味精，令客人能品嘗食物的原味道。",
                "categories" => [
                    "Burger restaurant"
                ],
                "addr" => "開源道60號駱駝漆大廈3座11樓J",
                "area" => "Kwun Tong",
                "email" => "waynet@coolcousins.wtt-mail.com",
                "tel" => "34254611"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thecoolcousinshk/photos/a.359738864658148/499613614004005/"
        },
        {
            url: "https://www.facebook.com/thecoolcousinshk/photos/a.359738864658148/486972645268102/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

