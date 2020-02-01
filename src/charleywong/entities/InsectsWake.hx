package charleywong.entities;

class InsectsWake implements Entity {
    public final id = "InsectsWake";
    public final name = [
        en => "Insects Wake",
        zh => "驚蟄"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UCRVAhVuAjiXnQtV21G6O7EQ"
        },
        {
            url: "https://www.facebook.com/InsectsWake/",
            meta: [
                "id" => "451228095071056",
                "about" =>
                "成立於2016年,受到激流金屬,律動金屬以及旋律死亡金屬所影響,亦不懼嘗試各種風格\nFormed in 2016, the music style was closed to Thrash,Groove and Melodic Death Metal but still trying different combinations of Metal.",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "insectswake@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/insectswake/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/InsectsWake/posts/1176752662518592"
        },
        {
            url: "https://www.facebook.com/InsectsWake/photos/a.675077999352730/1166506940209831/"
        },
        {
            url: "https://www.facebook.com/InsectsWake/photos/a.675077999352730/1140464616147397/"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

