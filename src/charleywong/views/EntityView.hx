package charleywong.views;

class EntityView extends View {
    override public function description() return "一個開放源碼同開放數據嘅商業/品牌目錄.";
    override public function render() {
        return super.render();
    }

    public var entity(get, never):Entity;
    function get_entity() return props.entity;

    function renderName(n:MultiLangString) {
        return switch [n[zh], n[en]] {
            case [ null, null ]: throw 'No name available';
            case [ z, null ]: z;
            case [ null, e ]: e;
            case [ z, e ]: '${e} ${z}';
        }
    }

    function renderWebpage(p:charleywong.Entity.WebPage) {
        var linktext = if (p.name != null)
            '${p.name} ${p.url}';
        else
            p.url;

        return jsx('
            <div key=${p.url}>
                <a href=${p.url} target="_blank">${linktext}</a>
            </div>
        ');
    }

    function renderPost(p:charleywong.Entity.Post) {
        var summary = if (p.summary != null)
            jsx('<p>${p.summary}</p>');
        else
            null;

        return jsx('
            <div key=${p.url}>
                <a href=${p.url} target="_blank">${p.url}</a>
                ${summary}
            </div>
        ');
    }

    override function bodyContent() {
        var jsonHref = '${entity.id}.json';
        return jsx('
            <Fragment>
                <header>
                    <a href="..">Charley Wong 和你查</a>
                </header>
                <h1>${renderName(entity.name)}</h1>
                <div>
                    ${entity.webpages.map(renderWebpage)}
                </div>
                <div>
                    ${entity.posts.map(renderPost)}
                </div>
                <div>
                    <a href=${jsonHref}>JSON 格式</a>
                </div>
            </Fragment>
        ');
    }
}