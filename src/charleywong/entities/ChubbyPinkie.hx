package charleywong.entities;

class ChubbyPinkie implements Entity {
    public final id = "ChubbyPinkie";
    public final name = [
        en => "Chubby Pinkie"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ChubbyPinkie/",
            meta: [
                "about" => "在這裡，你可以畫畫，可以做手工；可以只為談天說地；可以shopping；更加可以只為我們的貓咪而來！只是，一切要在午餐後！營業時間:每天的下午二時直到深宵。",
                "categories" => [
                    "Shopping & retail",
                    "Arts and entertainment"
                ],
                "email" => "chubbypinkie@gmail.com",
                "id" => "615256065248202"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ChubbyPinkie/posts/2559923047448151"
        }
    ];
    public final tags:Array<Tag> = [];
}

