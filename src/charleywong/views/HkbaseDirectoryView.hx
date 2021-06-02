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

    function renderLabel(label:String) return jsx('
        <span className="type">${label}</span>
    ');

    function renderEntity(e:Entity) {
        var data = HkbaseDirectory.getData(e);
        return jsx('
            <li key=${e.id} className=${Tag.expend(e.tags).map(t -> "tag-" + t.id).join(" ")} >
                <a href=${'/${e.id}'}>${e.name.printAll()}</a>
                ${data != null ? renderLabel(data.type) : null}
            </li>
        ');
    }

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
                <div className="container mx-auto px-1 sm:px-4">
                    <header className="p-6 md:p-6 text-center">
                        <a href="/"><img className="w-1/3 md:w-1/4 pr-4 pl-4 lg:w-1/5 pr-4 pl-4 logo-header" src=${R("/images/charley-600-w.png")} alt="Charley Wong 和你查"/></a>
                    </header>
                    <div className="w-full md:w-2/3 p-4 mx-auto color_black_o60">
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
                    <div className="w-full md:w-2/3 pr-4 pl-4 mx-auto bg-white pt-3 pb-9 rounded-10 container-btm relative">
                        <div className="flex items-center">
                            <div className="relative flex-grow max-w-full flex-1 px-4 p-0">共有 ${entities.length} 項資料</div>
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