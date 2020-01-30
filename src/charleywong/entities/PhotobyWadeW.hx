package charleywong.entities;

class PhotobyWadeW implements Entity {
    public final id = "photobywadew";
    public final name = [
        en => "Photo by Wade W."
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://photobywadew.com"
        },
        {
            url: "https://www.facebook.com/photobywadew/",
            meta: [
                "id" => "500268843363313",
                "about" => "Up-and-coming Photographer <Photo x Art x Design> Create Your Lovin Unique Moment ~Member of WPPI. www.photobywadew.com",
                "categories" => [
                    "Event videographer",
                    "Professional service"
                ],
                "email" => "photobywadewong@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/photobywadew/posts/2629831417073701"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

