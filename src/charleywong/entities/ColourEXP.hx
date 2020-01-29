package charleywong.entities;

class ColourEXP implements Entity {
    public final id = "ColourEXP";
    public final name = [
        en => "Colour EXP"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ColourEXP/",
            meta: [
                "id" => "1576305292641701",
                "about" =>
                "EXPress, EXPlore and EXPeriment with Colours!\nMonday - Saturday 11:30am - 7:30pm\nClosed on Sundays and Public Holidays 星期日 及 公眾假期休息",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "addr" => "觀塘 興業街19-21號 明生工業大廈 8樓 前座 8/F, Front Block, Ming Sang Industrial Building, 19-21 Hing Yip Street",
                "area" => "Kwun Tong",
                "email" => "info@colourexp.com",
                "tel" => "93303230"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ColourEXP/photos/a.1599379647000932/2432792873659601/"
        },
        {
            url: "https://www.facebook.com/ColourEXP/photos/a.1599379647000932/2559823004289920/"
        }
    ];
    public final tags:Array<Tag> = [];
}

