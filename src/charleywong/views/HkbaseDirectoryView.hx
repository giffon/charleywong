package charleywong.views;

using charleywong.EntityTools;

class HkbaseDirectoryView extends View {
    override public function title() return 'HKBASE企業名冊名單';
    override public function description() return 'Charley Wong 和你查 HKBASE企業名冊名單.';
    override function canonical() return Path.join([ServerMain.domain, path]);
    override public function render() {
        return super.render();
    }

    static public final path = "page/hkbase-directory";

    public var entities(get, never):Array<Entity>;
    function get_entities() return props.entities;

    function renderAreasLabel(area:String) return jsx('
        <span key=${area} className="area">${area}</span>
    ');

    function renderEntity(e:Entity) return jsx('
        <li key=${e.id} className=${Tag.expend(e.tags).map(t -> "tag-" + t.id).join(" ")} >
            <a href=${'/${e.id}'}>${e.name.printAll()}</a>
            <span>${e.areas().map(renderAreasLabel)}</span>
        </li>
    ');

    override function prefetch() return entities.length > 5 ? [] : [
        for (e in entities)
        [
            '/${e.id}',
            '/${e.id}/profile.png',
        ]
    ].fold((item, res:Array<String>)-> res.concat(item), super.prefetch());

    override function bodyContent() {
        return jsx('
            <Fragment>
                <div className="container">
                    <header className="p-3 p-md-4 text-center">
                        <a href="/"><img className="col-4 col-md-3 col-lg-2 logo-header" src=${R("/images/charley-600-w.png")} alt="Charley Wong 和你查"/></a>
                    </header>
                    <div className="col-12 col-md-8 mx-auto bg-white py-3 rounded-10 container-btm">
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