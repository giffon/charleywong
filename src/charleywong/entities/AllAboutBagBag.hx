package charleywong.entities;

class AllAboutBagBag implements Entity {
    public final id = "AllAboutBagBag";
    public final name = [
        en => "All About Bag Bag"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AllAboutBagBag/",
            meta: [
                "about" => "We Tailor-make bags | 香港專業手作品牌\n.\nReady to buy?\nWebsite: www.pinkoi.com/store/allaboutbagbag",
                "categories" => [
                    "Bags/luggage",
                    "Design & fashion",
                    "Arts and crafts shop"
                ],
                "id" => "390136617712540"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AllAboutBagBag/posts/2778687862190725"
        },
        {
            url: "https://www.facebook.com/AllAboutBagBag/photos/a.390146694378199/2771730166219828/"
        },
        {
            url: "https://www.facebook.com/AllAboutBagBag/posts/2598197223573124"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

