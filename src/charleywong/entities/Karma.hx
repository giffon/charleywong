package charleywong.entities;

class Karma implements Entity {
    public final id = "karma.avg";
    public final name = [
        en => "Karma"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.hime-otomeavg.com/karma"
        },
        {
            url: "https://www.facebook.com/karma.avg/",
            meta: [
                "id" => "111103700246704",
                "about" => "以彷彿要滿溢出來的悲傷，\n混亂灰暗的六、七月的香港為靈感而誕生的故事。\n\n《Karma》講述在一個極權統治的國家下，人民反抗，而後被猛烈的打壓——\n在這無盡的迴圈之下所發生的悲劇。",
                "categories" => [
                    "Performing arts"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/karma.avg/posts/168014687888938"
        },
        {
            url: "https://www.facebook.com/karma.avg/posts/145868196770254"
        }
    ];
    public final tags:Array<Tag> = [];
}

