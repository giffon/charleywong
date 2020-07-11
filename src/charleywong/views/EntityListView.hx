package charleywong.views;

using charleywong.EntityTools;

class EntityListView extends View {
    override public function title() return '${listName}名單';
    override public function description() return 'Charley Wong 和你查 ${listName}名單.';
    override function canonical() return Path.join([ServerMain.domain, path]);
    override public function render() {
        return super.render();
    }

    public var path(get, never):String;
    function get_path() return props.path;

    public var slug(get, never):String;
    function get_slug() return props.slug;

    public var listName(get, never):String;
    function get_listName() return props.listName;

    public var entities(get, never):Array<Entity>;
    function get_entities() return props.entities;

    public var searchQuery(get, never):Null<String>;
    function get_searchQuery() return props.searchQuery;

    function renderAreasLabel(area:String) return jsx('
        <span key=${area} className="area">${area}</span>
    ');

    function renderEntity(e:Entity) return jsx('
        <li key=${e.id} className=${Tag.expend(e.tags).map(t -> "tag-" + t.id).join(" ")} >
            <a href=${'/${e.id}'}>${e.name.printAll()}</a>
            <span>${e.areas().map(renderAreasLabel)}</span>
        </li>
    ');

    function renderListName() return jsx('
        <h3 className="text-center">${listName}</h3>
    ');

    override function prefetch() return entities.length > 5 ? [] : [
        for (e in entities)
        [
            '/${e.id}',
            '/${e.id}/profile.png',
        ]
    ].fold((item, res:Array<String>)-> res.concat(item), super.prefetch());

    override function bodyContent() {
        var jsonHref = '${slug}.json';
        return jsx('
            <Fragment>
                <div className="container">
                    <header className="p-3 p-md-4 text-center">
                        <a href="/"><img className="col-4 col-md-3 col-lg-2 logo-header" src=${R("/images/charley-600-w.png")} alt="Charley Wong 和你查"/></a>
                    </header>
                    <div className="col-12 col-md-8 mx-auto bg-white py-3 rounded-10 container-btm">
                        <div className="pb-3">
                            ${searchQuery != null ? Index.searchForm(searchQuery, false) : renderListName()}
                        </div>
                        <div className="d-flex align-items-center">
                            <div className="col p-0">共有 ${entities.length} 項資料</div>
                            <div
                                className="share-button"
                                data-title=${title()}
                                data-url=${canonical()}
                            />
                        </div>
                        <div><ul className="entity-list">${entities.map(renderEntity)}</ul></div>
                    </div>

                </div>
            </Fragment>
        ');
    }
}