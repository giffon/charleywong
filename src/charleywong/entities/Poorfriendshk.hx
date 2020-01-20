package charleywong.entities;

class Poorfriendshk implements Entity {
    public final id = "poorfriendshk";
    public final name = [
        zh => "貧友呀將"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/poorfriendshk/",
            meta: [
                "about" => "呀將，香港首席貧友，鍾意畫下公仔畫下港人港事，同好多香港人一樣夢想係中六合彩頭獎。",
                "categories" => [
                    "Personal website"
                ],
                "email" => "lingling1003@hotmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/poorfriendshk/photos/a.529510467093727/2982736228437793/"
        },
        {
            url: "https://www.facebook.com/poorfriendshk/photos/a.710113995700039/2933978826646867/"
        },
        {
            url: "https://www.facebook.com/poorfriendshk/photos/a.529510467093727/2900650976646319/"
        }
    ];
}

