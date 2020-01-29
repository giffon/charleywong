package charleywong.entities;

class CabinCrewAfterwork implements Entity {
    public final id = "cabincrewafterwork";
    public final name = [
        en => "Cabin Crew Afterwork"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/cabincrewafterwork/"
        },
        {
            url: "https://www.facebook.com/cabincrewafterwork/",
            meta: [
                "id" => "1463973117231194",
                "about" => "一系列以空中服務員為主題的文字圖像創作。\n分享人像攝影心得和拍攝教學及提供人氣拍攝服務。",
                "categories" => [
                    "Photographer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cabincrewafterwork/posts/2130857453876087"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

