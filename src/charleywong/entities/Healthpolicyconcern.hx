package charleywong.entities;

class Healthpolicyconcern implements Entity {
    public final id = "healthpolicy.concern";
    public final name = [
        zh => "衞生服務界選委"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/healthpolicy.concern/",
            meta: [
                "about" => "我們是一群衛生服務界選委，作為前線醫護人員，我們關心香港的醫療政策，希望以專業知識和經驗，倡議改善醫療及社會福利的政策，讓市民在一個文明的社會得到｢以人為本｣的照顧。",
                "categories" => [
                    "Community organisation"
                ],
                "id" => "1979871808921302"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/healthpolicy.concern/posts/2403797736528705"
        }
    ];
}

