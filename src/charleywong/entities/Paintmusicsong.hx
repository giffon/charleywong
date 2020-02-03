package charleywong.entities;

class Paintmusicsong implements Entity {
    public final id = "paintmusicsong";
    public final name = [
        zh => "畫歌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/paintmusicsong/",
            meta: [
                "id" => "1749538751784556",
                "categories" => [
                    "Artist"
                ],
                "email" => "paintmusicsong@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/paintmusicsong/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/paintmusicsong/photos/a.1752830161455415/2935489319856154/"
        },
        {
            url: "https://www.facebook.com/paintmusicsong/photos/a.1752830161455415/2905255832879503/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

