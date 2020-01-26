package charleywong.entities;

class DeMosDerivedFromMaOnShan implements Entity {
    public final id = "DeMosDerivedFromMaOnShan";
    public final name = [
        en => "DeMos",
        zh => "馬民"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/DeMosDerivedFromMaOnShan/",
            meta: [
                "id" => "970516516419922",
                "about" => "DeMos馬民「demos」是希臘文，原指是人民的意思。馬鞍山民知民GO(簡稱:馬民)即我們關注社區需要時(民知)，便會行動(民GO)。",
                "categories" => [
                    "Community",
                    "Community organisation",
                    "Non-governmental organisation (NGO)"
                ],
                "email" => "demos.maman@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/DeMosDerivedFromMaOnShan/photos/a.971327493005491/1543854942419407/"
        },
        {
            url: "https://www.facebook.com/DeMosDerivedFromMaOnShan/photos/a.971327493005491/1494757277329174/"
        }
    ];
}

