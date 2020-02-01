package charleywong.entities;

class OutputProLabHK implements Entity {
    public final id = "OutputProLabHK";
    public final name = [
        en => "Output Pro Lab",
        zh => "沖印專門店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.outputprolab.com"
        },
        {
            url: "https://www.facebook.com/OutputProLabHK/",
            meta: [
                "id" => "356800961010351",
                "about" => "C41/E2C/機沖黑白/代沖E6/金屬相紙輸出\n可自備USB或電郵下載掃描檔\n多款菲林/黑白彩色藥水/相紙/黑房工具零售...\n\n\n\nSee more",
                "categories" => [
                    "Printing service",
                    "Camera shop"
                ],
                "addr" => "1/F 612, Reclamation Street",
                "area" => "Hong Kong",
                "email" => "outputprolab@qq.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/OutputProLabHK/posts/2805312639492492"
        }
    ];
    public final tags:Array<Tag> = [
        photography,
        shop
    ];
}

