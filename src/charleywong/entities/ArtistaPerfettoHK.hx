package charleywong.entities;

class ArtistaPerfettoHK implements Entity {
    public final id = "artistaperfettohk";
    public final name = [
        en => "Artista Perfetto HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/artistaperfettohk/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Product/service"
                ],
                "addr" => "Shop 2, No. 3A Sharp Street West, Causeway Bay",
                "area" => "Hong Kong",
                "id" => "305599263600747"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/artistaperfettohk/photos/a.320462355447771/575822633245074/"
        },
        {
            url: "https://www.facebook.com/artistaperfettohk/photos/a.320462355447771/566872550806749/"
        }
    ];
}

