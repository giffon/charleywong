package charleywong.entities;

class Kongtattoohk implements Entity {
    public final id = "kongtattoohk";
    public final name = [
        en => "KONG Tattoo",
        zh => "狂繡紋身"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/kongtattoohk/"
        },
        {
            url: "https://www.facebook.com/kongtattoohk/",
            meta: [
                "id" => "1106549242729325",
                "about" => "香港觀塘成業街成業大廈地下5室25\n狂繡。紋身\nwhatsapp：6848-0401\nwechat id： kongtattoohk",
                "categories" => [
                    "Art",
                    "Design & fashion"
                ],
                "email" => "sunny9326@hotmail.com",
                "tel" => "68480401"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kongtattoohk/videos/406660643292413/"
        }
    ];
}

