package charleywong.entities;

class CreepyMouse implements Entity {
    public final id = "CreepyMousePaintDesign";
    public final name = [
        en => "Creepy Mouse"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.creepymouse.org"
        },
        {
            url: "https://www.facebook.com/CreepyMousePaintDesign/",
            meta: [
                "id" => "534539700012113",
                "about" => "服務項目：\nGraffiti / Calligraphy / Calligraffiti\n擔任Calligraffiti國際藝術團隊大使\nWelcome to DM me :\nMob: +886 978 900 957",
                "categories" => [
                    "Artist",
                    "Clothing (brand)"
                ],
                "email" => "creepymouse1@gmail.com",
                "tel" => "0978900957"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CreepyMousePaintDesign/posts/1605207319612007"
        },
        {
            url: "https://www.facebook.com/CreepyMousePaintDesign/photos/a.534576843341732/1653467201452685/"
        }
    ];
    public final tags:Array<Tag> = [];
}

