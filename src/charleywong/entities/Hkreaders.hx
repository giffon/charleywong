package charleywong.entities;

class Hkreaders implements Entity {
    public final id = "hkreaders";
    public final name = [
        zh => "序言書室",
        en => "Hong Kong Reader Bookstore"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkreaders/",
            meta: [
                "about" => "序言書室是香港一間人文學科及社會科學之中英文書籍的樓上書店，亦會不定期舉辦各項文化活動，如讀書會、新書發佈會等，藉此推動閱讀風氣。\n序言書架：http://www.anobii.com/hkreader/books",
                "categories" => [
                    "Book shop"
                ],
                "addr" => "7/F, 68 Sai Yeung Choi Street South",
                "area" => "Mong Kok",
                "email" => "info@hkreaders.com",
                "tel" => "23950031",
                "id" => "308792302656086"
            ]
        },
        {
            url: "https://www.instagram.com/hkreaders/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkreaders/posts/1255787531289887"
        }
    ];
    public final tags:Array<Tag> = [
        book,
        shop
    ];
}

