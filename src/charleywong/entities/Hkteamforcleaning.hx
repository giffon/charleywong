package charleywong.entities;

class Hkteamforcleaning implements Entity {
    public final id = "hkteamforcleaning";
    public final name = [
        zh => "香港（裝修）清潔部隊 ",
        en => "Hong Kong Team For Cleaning"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.collaction.hk/project/story/569"
        },
        {
            url: "https://www.facebook.com/hkteamforcleaning/",
            meta: [
                "id" => "1498215293813148",
                "about" => "香港（裝修）清潔部隊 是全港唯一個只專於裝修後清潔的團隊，更是一班盡責，盡心及盡善的團隊\n\n只要你們租買物業,屋企,店舖和辦公室裝修完後，香港(裝修)清潔部隊 可以幫到你們清潔",
                "categories" => [
                    "Business service"
                ],
                "email" => "hktforcleaning66283214@yahoo.com.hk",
                "tel" => "66283214"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkteamforcleaning/posts/2199877486980255"
        }
    ];
}

