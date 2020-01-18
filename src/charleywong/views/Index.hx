package charleywong.views;

import charleywong.EntityIndex;

class Index extends View {
    override public function description() return "一個開放源碼同開放數據嘅商業/品牌目錄.";
    override public function render() {
        return super.render();
    }

    static public function searchForm(query:String) return jsx('
        <form>
            <input type="text" name="search" placeholder="搜尋" required=${true} defaultValue=${query} />
            <input type="submit" value="🔎" />
        </form>
    ');

    override function bodyContent() {
        return jsx('
            <Fragment>
                <h1>Charley Wong 和你查</h1>
                ${searchForm("")}
                <div>
                    <a href="list/all">全部 Charley Wong 和你查 商業/品牌名單</a>
                </div>
            </Fragment>
        ');
    }
}