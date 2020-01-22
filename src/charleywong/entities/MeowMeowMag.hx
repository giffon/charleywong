package charleywong.entities;

class MeowMeowMag implements Entity {
    public final id = "MeowMeowMag";
    public final name = [
        zh => "貓奴誌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MeowMeowMag/",
            meta: [
                "about" => "鬧市中沒有被遺忘的喵生命。\nLooking for the cats in this noisy city.",
                "categories" => [
                    "Arts & humanities website"
                ],
                "email" => "meow@meowmeowmag.com",
                "id" => "507386412649429"
            ]
        },
        {
            url: "https://www.instagram.com/hkmeowmag/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MeowMeowMag/photos/a.535217159866354/2572871706100879/"
        },
        {
            url: "https://www.facebook.com/MeowMeowMag/posts/2269307599790626"
        }
    ];
}

