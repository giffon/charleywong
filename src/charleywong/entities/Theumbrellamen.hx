package charleywong.entities;

class Theumbrellamen implements Entity {
    public final id = "theumbrellamen";
    public final name = [
        zh => "傘下的人"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/theumbrellamen/",
            meta: [
                "id" => "418811134940487",
                "about" => "《被時代選中的我們》\n《亞視永恆》\n《有冇人熱烈慶祝香港回歸祖國二十年》\n《有些醜陋的香港人》",
                "categories" => [
                    "Author",
                    "Book"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/theumbrellamen/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/theumbrellamen/photos/a.419466294874971/1433050833516507/"
        },
        {
            url: "https://www.facebook.com/theumbrellamen/photos/a.419871704834430/1436860876468836/"
        },
        {
            url: "https://www.facebook.com/theumbrellamen/posts/1446303882191202"
        }
    ];
    public final tags:Array<Tag> = [
        book
    ];
}

