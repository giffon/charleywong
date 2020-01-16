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

    function renderName(n:MultiLangString) {
        return switch [n[zh], n[en]] {
            case [ null, null ]: throw 'No name available';
            case [ z, null ]: z;
            case [ null, e ]: e;
            case [ z, e ]: '${e} ${z}';
        }
    }

    function renderEntity(e:Entity) return jsx('
        <p key=${e.id}><a href=${'/${e.id}'}>${renderName(e.name)}</a></p>
    ');

    override function bodyContent() {
        var jsonHref = '${slug}.json';
        return jsx('
            <Fragment>
                <header>
                    <a href="/">Charley Wong 和你查</a>
                </header>
                <div className="mb-3">
                    <h1>${listName}</h1>
                    <a href=${jsonHref}>JSON 格式</a>
                </div>
                <div>${entities.map(renderEntity)}</div>
            </Fragment>
        ');
    }
}