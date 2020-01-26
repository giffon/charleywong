package charleywong.entities;

class Kamnaiwaidphk implements Entity {
    public final id = "kamnaiwaidphk";
    public final name = [
        zh => "甘乃威",
        en => "Kam Wai"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kamnaiwaidphk/",
            meta: [
                "id" => "1946752185653273",
                "about" => "香港中西區區議會上環區民選區議員",
                "categories" => [
                    "Politician"
                ],
                "email" => "nwkam@dphk.org",
                "tel" => "25411210"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kamnaiwaidphk/posts/2486258691702617"
        },
        {
            url: "https://www.facebook.com/kamnaiwaidphk/posts/2455812868080533"
        }
    ];
}

