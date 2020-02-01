package charleywong.entities;

class Samsonhuiphysio implements Entity {
    public final id = "samsonhuiphysio";
    public final name = [
        en => "Samson Physio",
        zh => "臻善針灸物理治療"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/samsonhuiphysio/",
            meta: [
                "id" => "1695911703992025",
                "about" => "筆者乃私人執業物理治療師。\n網上太多空泛，缺乏理據既資訊\n我想的是，寫有深度的文章，幫助有需要的人",
                "categories" => [
                    "Physical therapist"
                ],
                "addr" => "旺角西洋菜南街168號168大廈21樓2104室",
                "area" => "Hong Kong",
                "tel" => "36908078"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/samsonhuiphysio/posts/2400089016907620"
        }
    ];
    public final tags:Array<Tag> = [
        medical
    ];
}

