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

    override function bodyClasses() {
        return super.bodyClasses().concat(["page-hkbase-directory"]);
    }

    public var entities(get, never):Array<Entity>;
    function get_entities() return props.entities;

    function renderAreasLabel(area:String) return jsx('
        <span key=${area} className="area">${area}</span>
    ');

    function renderEntity(e:Entity) return jsx('
        <li key=${e.id} className=${Tag.expend(e.tags).map(t -> "tag-" + t.id).join(" ")} >
            <a href=${'/${e.id}'}>${e.name.printAll()}</a>
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
                    <div className="col-12 col-md-8 mx-auto color_black_o60">
                        <h1>《HKBASE企業名冊》名單</h1>
                        <p>
                            <a href="/hkbase.org">香港永續經濟聯會(HKBASE)</a> 是新時代的企業網絡，成立於2017年12月，旨在凝聚不同界別的企業人士，以推動「永續經濟 香港自強」為使命。
                        </p>
                        <p>
                            2020年初起，HKBASE成立了「HKBASE商務引薦平台」，推動會員企業互相引薦供應商、客戶和伙伴，做到「香港人生意、香港人引薦」。
                        </p>
                        <p>
                            HKBASE編製了這份<a href="https://www.facebook.com/hkbase.org/posts/2556063708038307" target="_blank">《HKBASE企業名冊》</a>，向公眾介紹各會員企業的產品和服務。
                        </p>
                        <p>
                            以下資料由 HKBASE 提供。
                        </p>
                    </div>
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