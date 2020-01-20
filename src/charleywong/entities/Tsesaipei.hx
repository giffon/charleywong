package charleywong.entities;

class Tsesaipei implements Entity {
    public final id = "tsesaipei";
    public final name = [
        zh => "謝曬皮",
        en => "TSE SAI PEI the incapable"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tsesaipei/",
            meta: [
                "about" => "www.tsesaipei.com",
                "categories" => [
                    "Author"
                ],
                "email" => "jas.tse322@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tsesaipei/photos/a.135262153287542/1396164237197321/"
        }
    ];
}

