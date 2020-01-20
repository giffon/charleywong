package charleywong.entities;

class Baabaasheepworkshop implements Entity {
    public final id = "baabaasheepworkshop";
    public final name = [
        zh => "羊咩咩手作坊",
        en => "BaaBaa Sheep Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/baabaasheepworkshop/",
            meta: [
                "about" => "《羊咩咩手作坊》每件產品為人手制作，不含化學成分、色素及防腐劑等皮膚致敏原。產品有手工皂、潤唇膏、護膚品及蠟布。\n我們希望透過手作用品推廣無汙染環境，宣揚保護海洋。務求達",
                "categories" => [
                    "Health/beauty"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/baabaasheepworkshop/photos/a.982484951958233/1186721998201193/"
        },
        {
            url: "https://www.facebook.com/baabaasheepworkshop/photos/a.982484951958233/1190193574520702/"
        }
    ];
}

