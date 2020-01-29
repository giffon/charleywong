package charleywong.entities;

class PhysioResist implements Entity {
    public final id = "100521374755288";
    public final name = [
        zh => "反抗有理",
        en => "PhysioResist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/100521374755288/",
            meta: [
                "about" => "「反抗有理」，由一群關心社會的物理治療師成立，旨在集結業界，希望以自身的力量，為社會的不公義發聲。\n\n「暴政當前，反抗有理」",
                "categories" => [
                    "Medical and health"
                ],
                "email" => "physio.resist@gmail.com",
                "id" => "100521374755288"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/100521374755288/photos/a.100572888083470/101023091371783/"
        }
    ];
    public final tags:Array<Tag> = [];
}

