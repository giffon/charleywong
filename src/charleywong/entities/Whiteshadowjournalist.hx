package charleywong.entities;

class Whiteshadowjournalist implements Entity {
    public final id = "whiteshadow.journalist";
    public final name = [
        zh => "白影"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.patreon.com/user?u=27684774"
        },
        {
            url: "https://www.facebook.com/whiteshadow.journalist/",
            meta: [
                "id" => "572554192799913",
                "about" => "土生土長的菲裔港人，攝影記者又是文字記者，好似周身刀但無張利。好似係本土派，但又自命大愛包容離地耶撚。",
                "categories" => [
                    "Journalist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/whiteshadow.journalist/photos/a.586188444769821/2605835189471793/"
        },
        {
            url: "https://www.facebook.com/whiteshadow.journalist/photos/a.586188444769821/2552106631511316/"
        },
        {
            url: "https://www.facebook.com/whiteshadow.journalist/posts/2487890387932941"
        }
    ];
    public final tags:Array<Tag> = [];
}

