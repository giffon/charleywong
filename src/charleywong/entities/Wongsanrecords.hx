package charleywong.entities;

class Wongsanrecords implements Entity {
    public final id = "wongsanrecords";
    public final name = [
        zh => "黃山",
        en => "wong san"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wongsanrecords/",
            meta: [
                "about" => "Hong Kong illustrator\n\nFeel free contact me to get a draw :)",
                "categories" => [
                    "Art"
                ],
                "email" => "sanwongps@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/wongsan.records/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wongsanrecords/photos/a.1961986007373770/2332284927010541/"
        },
        {
            url: "https://www.facebook.com/wongsanrecords/photos/a.1961986007373770/2273149089590792/"
        }
    ];
}

