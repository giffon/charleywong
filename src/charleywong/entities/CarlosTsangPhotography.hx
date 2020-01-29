package charleywong.entities;

class CarlosTsangPhotography implements Entity {
    public final id = "CarlosTsangPhotography";
    public final name = [
        en => "Carlos Tsang Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CarlosTsangPhotography/",
            meta: [
                "id" => "172893559422022",
                "about" =>
                "攝影風格: 紀實式攝影(Documentary Photography),\n攝影服務範圍: Wedding Day/Pre-Wedding, Portrait, Kid, Event, etc\n婚禮及婚紗、 人像、各項活動如畢業典禮、公司週年活動、廣告拍攝及網上平台節目的攝錄等",
                "categories" => [
                    "Photographer"
                ],
                "email" => "carlostsang@ymail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CarlosTsangPhotography/photos/a.453152531396122/2767923879918964/"
        }
    ];
    public final tags:Array<Tag> = [];
}

