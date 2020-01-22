package charleywong.entities;

class Soapstonestudio implements Entity {
    public final id = "soapstonestudio";
    public final name = [
        zh => "軟石工作室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/soapstonestudio/",
            meta: [
                "about" => "dusty silence\n\n石屑沉降，繁思靜默。",
                "categories" => [
                    "Artist",
                    "Art"
                ],
                "email" => "soapstonestudio@gmail.com",
                "id" => "338800586319546"
            ]
        },
        {
            url: "https://www.instagram.com/soapstonestudio/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/soapstonestudio/photos/a.343964715803133/1069169693282628/"
        },
        {
            url: "https://www.facebook.com/soapstonestudio/photos/a.343964715803133/1173691169497146/"
        }
    ];
}

