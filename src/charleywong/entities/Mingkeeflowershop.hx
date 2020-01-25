package charleywong.entities;

class Mingkeeflowershop implements Entity {
    public final id = "mingkeeflowershop";
    public final name = [
        zh => "明記花店",
        en => "Ming Kee Florist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mingkeeflowershop/",
            meta: [
                "id" => "128275158397",
                "about" => "本花店創立於一九六三年　電話:27459333　傳真:27458300\n地址: 美孚荔灣道 荔灣街市18號舖",
                "categories" => [
                    "Florist",
                    "Retail company"
                ],
                "addr" => "美孚荔灣道 荔灣街市18號舖",
                "area" => "Lai Chi Kok",
                "tel" => "95308010"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mingkeeflowershop/photos/a.10150509903253398/10157686140608398/"
        },
        {
            url: "https://www.facebook.com/mingkeeflowershop/posts/10157675018693398"
        }
    ];
}

