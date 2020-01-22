package charleywong.entities;

class WaTryCoffee implements Entity {
    public final id = "WATRYCOFFEE";
    public final name = [
        en => "Wa & Try Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/WATRYCOFFEE/",
            meta: [
                "about" => "自家烘焙咖啡豆,自制掛耳包\n即訂即做",
                "categories" => [
                    "Retail company"
                ],
                "email" => "watrycoffee@gmail.com",
                "tel" => "68161440",
                "id" => "446017635871022"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WATRYCOFFEE/photos/a.486876408451811/821396714999777/"
        },
        {
            url: "https://www.facebook.com/WATRYCOFFEE/photos/a.486876408451811/817093192096796/"
        }
    ];
}

