package charleywong.entities;

class Matyuen implements Entity {
    public final id = "mat.hairstylist";
    public final name = [
        en => "Mat yuen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mat.hairstylist/",
            meta: [
                "about" => "工作室地址: 紅磡蕪湖街61號1樓\nmagic dream salon\n...\n\n\nSee more",
                "categories" => [
                    "Barber\'s",
                    "Local service",
                    "Product/service"
                ],
                "addr" => "No61 1 floor wuhu street hung hom kowloon",
                "area" => "Hong Kong",
                "email" => "mat_yuen@hotmail.com",
                "id" => "1296694543795846"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mat.hairstylist/photos/a.1524396477692317/1943158612482766/"
        },
        {
            url: "https://www.facebook.com/mat.hairstylist/posts/1960296487435645"
        }
    ];
    public final tags:Array<Tag> = [
        salon
    ];
}

