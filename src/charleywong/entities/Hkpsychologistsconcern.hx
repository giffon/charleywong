package charleywong.entities;

class Hkpsychologistsconcern implements Entity {
    public final id = "hkpsychologistsconcern";
    public final name = [
        zh => "良心理政",
        en => "HK Psychologists Concern"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkpsychologistsconcern/",
            meta: [
                "about" => "良知．決心．理性\n「良心理政」是由一群關心政事、熱心社會事務、渴望香港成為一個更快樂的社區的臨床心理學家, 教育心理學家及工業與組織心理學家組成。",
                "categories" => [
                    "Community"
                ],
                "email" => "hkpsychologistsconcern@gmail.com",
                "id" => "350828171780819"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkpsychologistsconcern/photos/a.351376255059344/1184691808394447/"
        },
        {
            url: "https://www.facebook.com/hkpsychologistsconcern/posts/1073516526178643"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

