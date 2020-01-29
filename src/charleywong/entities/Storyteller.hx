package charleywong.entities;

class Storyteller implements Entity {
    public final id = "yourstoryteller";
    public final name = [
        en => "Storyteller"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.story-teller-studio.com"
        },
        {
            url: "https://www.facebook.com/yourstoryteller/",
            meta: [
                "id" => "632902003420222",
                "about" =>
                "We\'re not even selling photography. We\'re selling romance.\n\nHong Kong Pre-wedding ‧ Oversea Pre-wedding ‧Wedding day ‧ Micro Film微電影",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "9 Lai Yip Street,",
                "area" => "Kwun Tong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yourstoryteller/posts/2612508062126263"
        }
    ];
    public final tags:Array<Tag> = [];
}

