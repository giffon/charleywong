package charleywong.entities;

class Heilymama implements Entity {
    public final id = "heilymama";
    public final name = [
        en => "Heily Ma",
        zh => "馬溱禧"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/heilymama/",
            meta: [
                "id" => "209149859922",
                "about" => "馬溱禧 Heily Ma - 警訊之花\n2007年至今,從事幕前工作\n香港電台演員/電影電視特約演員/謎米節目主持...\n\n\nSee more",
                "categories" => [
                    "Artist"
                ],
                "email" => "lokca0228@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/heilymama/photos/a.10152928605499923/10157517692639923/"
        },
        {
            url: "https://www.facebook.com/heilymama/photos/a.10152928605499923/10157411950564923/"
        }
    ];
    public final tags:Array<Tag> = [];
}

