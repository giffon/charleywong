package charleywong.entities;

class AquavitStudios implements Entity {
    public final id = "aquavitstudios";
    public final name = [
        en => "Aquavit Studios"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/aquavitstudios/",
            meta: [
                "about" => "Aquavit Studios是一班專業的年輕人組成團隊，在提供攝影攝錄服務中，我們更期望為大家帶來創新有態度的作品，讓我們把你們的珍貴的回憶好好記錄，希望你們會喜歡我們的作品！",
                "categories" => [
                    "Photography & videography",
                    "Camera/photo",
                    "Video creator"
                ],
                "addr" => "沙田火炭黃竹洋街15-21號華聯工業中心A座7樓23室",
                "area" => "Hong Kong",
                "email" => "info@aquavitstudios.com",
                "id" => "1821473234826129"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/aquavitstudios/posts/2161588534147929"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding,
    ];
}

