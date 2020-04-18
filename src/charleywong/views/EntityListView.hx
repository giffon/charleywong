package charleywong.views;

class EntityListView extends View {
    override public function title() return '${listName}名單';
    override public function description() return 'Charley Wong 和你查 ${listName}名單.';
    override public function render() {
        return super.render();
    }

    public var slug(get, never):String;
    function get_slug() return props.slug;

    public var listName(get, never):String;
    function get_listName() return props.listName;

    public var entities(get, never):Array<Entity>;
    function get_entities() return props.entities;

    public var searchQuery(get, never):Null<String>;
    function get_searchQuery() return props.searchQuery;

    function renderEntity(e:Entity) return jsx('
        <li key=${e.id}><a href=${'/${e.id}'}>${e.name.printAll()}</a></li>
    ');

    function renderListName() return jsx('
        <h3 className="text-center">${listName}</h3>
    ');

    override function prefetch() return [
        for (e in entities.slice(0, 5))
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
                        <div className="d-sm-flex text-center text-sm-left align-items-center pb-3">
                            <div className="col p-0">共有 ${entities.length} 項資料</div>
                            <a className="btn btn-light" href=${jsonHref}>查看 JSON 格式 📃</a>
                        </div>
                        <div><ul className="entity-list">${entities.map(renderEntity)}</ul></div>
                    </div>

                    <div className="row justify-content-center">

                        <div className="col-12 col-md-6 col-lg-4">
                            <div>
                                <img className="w-100 px-3 px-md-5 py-3" src=${R("/images/circle.png")} alt="yellow economic circle"/>
                            </div>
                            <div className="text-center px-3 px-lg-5 pb-5 py-md-0 color_black_o60">
                                <div className="container-yc"><span className="yc">黃</span><span className="yc">色</span><span className="yc">經</span><span className="yc">濟</span><span className="yc">圈</span></div>
                                <p className="p-3">Charley Wong 和你查 搜集多個商店、創作人、專頁，以第一身表態支持 #香港人 #反送中，爭取 #自由 #民主 的良心發言。當中有高調行動，有低調暗示，我地不作篩選，各位自行以個人喜好辨別。</p>
                            </div>
                        </div>

                        <div className="col-12 col-md-6 col-lg-4">
                            <div>
                                <img className="w-100 px-3 px-md-5 py-3" src=${R("/images/open.png")} alt="open source"/>
                            </div>
                            <div className="text-center px-3 px-lg-5 pb-5 py-md-0 color_black_o60">
                                <div><span className="yc">開</span><span className="yc">放</span><span className="yc">數</span><span className="yc">據</span></div>
                                <div><span className="yc">開</span><span className="yc">放</span><span className="yc">原</span><span className="yc">碼</span></div>
                                <p className="p-3">Charley Wong 和你查 以高度透明同公開嘅方式運作，而且鼓勵同路人使用我地嘅成果：我地以 <a href="https://github.com/giffon/charleywong/blob/master/LICENSE">open license</a> 發佈所有<a href="https://github.com/giffon/charleywong">數據同原碼</a>。任何人只要註明出處，都可以隨意使用。</p>
                            </div>
                        </div>
                    </div>
                </div>
            </Fragment>
        ');
    }
}