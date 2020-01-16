package charleywong.views;

import charleywong.EntityIndex;

class Index extends View {
    override public function description() return "一個開放源碼同開放數據嘅商業/品牌目錄.";
    override public function render() {
        return super.render();
    }

    function renderName(n:MultiLangString) {
        return switch [n[zh], n[en]] {
            case [ null, null ]: throw 'No name available';
            case [ z, null ]: z;
            case [ null, e ]: e;
            case [ z, e ]: '${e} ${z}';
        }
    }

    function renderEntity(e:Entity) return jsx('
        <p key=${e.id}><a href=${'${e.id}'}>${renderName(e.name)}</a></p>
    ');

    override function bodyContent() {
        var entities = EntityIndex.entities.array();
        entities.sort((e1, e2) -> Reflect.compare(renderName(e1.name), renderName(e2.name)));
        return jsx('
            <Fragment>
                <h1>Charley Wong 和你查</h1>
                <form>
                    <input type="text" name="search" placeholder="搜尋" required=${true} />
                    <input type="submit" value="🔎" />
                </form>
                <div>${entities.map(renderEntity)}</div>
            </Fragment>
        ');
    }
}