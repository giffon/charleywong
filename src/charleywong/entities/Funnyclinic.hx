package charleywong.entities;

class Funnyclinic implements Entity {
    public final id = "funnyclinic";
    public final name = [
        zh => "診所低能奇觀"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/funnyclinic/",
            meta: [
                "id" => "328791257277337",
                "about" => "我是一個診所助護，叫珍寶豬。如文章之經歷雷同，實屬巧合，絕非唱你！本專頁有廣告內容。請勿搬字過紙轉載，請註明出處，謝謝。\n相關合作 Email : Jumbopig2014@gmail.com",
                "categories" => [
                    "Community",
                    "Just for fun"
                ],
                "email" => "jumbopig2014@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/funnyclinic/photos/a.329109083912221/1299233920233061/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        medical
    ];
}

