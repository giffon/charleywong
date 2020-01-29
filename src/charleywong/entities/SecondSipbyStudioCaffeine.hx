package charleywong.entities;

class SecondSipbyStudioCaffeine implements Entity {
    public final id = "2econdsip";
    public final name = [
        en => "Second Sip by Studio Caffeine"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/2econdsip/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Tea room"
                ],
                "addr" => "G/F, 23 School Street",
                "area" => "Causeway Bay",
                "email" => "info@studiocaffeine.com.hk",
                "id" => "242106439868101"
            ]
        },
        {
            url: "https://www.instagram.com/2econdsip/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/2econdsip/photos/a.256129068465838/586399605438781/"
        },
        {
            url: "https://www.facebook.com/2econdsip/photos/a.256129068465838/486315738780502/"
        }
    ];
    public final tags:Array<Tag> = [];
}

