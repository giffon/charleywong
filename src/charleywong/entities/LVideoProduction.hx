package charleywong.entities;

class LVideoProduction implements Entity {
    public final id = "hkeventvideo";
    public final name = [
        en => "L-Video Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.L-video.com"
        },
        {
            url: "https://www.facebook.com/hkeventvideo/",
            meta: [
                "id" => "110774855622125",
                "about" => "L-video負責電影幕後花絮製作及擔任超過500場婚禮，Event 攝影及攝錄。電影參與有：沒女神探，我老婆係明星等Event 拍攝有：Louis Vuitton，Dior，Longchamp，建設銀行，光大銀行，越秀集團等",
                "categories" => [
                    "Local business"
                ],
                "addr" => "Room702,Tower A, Billion Centre, 1 Wang Kwong Road, Kowloon Bay, Kowloon",
                "area" => "Hong Kong",
                "email" => "info@l-video.com",
                "tel" => "93812189"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkeventvideo/photos/a.660593720640233/2811706648862252/"
        }
    ];
}

