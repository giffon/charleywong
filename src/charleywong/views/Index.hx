package charleywong.views;

import charleywong.EntityIndex;

class Index extends View {
    override public function description() return "一個開放源碼同開放數據嘅商業/品牌目錄.";
    override public function render() {
        return super.render();
    }

    static public function searchForm(query:String) return jsx('
        <form className="d-flex" action="/">
            <input className="w-100 p-3 search-input" type="text" name="search" placeholder="商業/品牌名稱" required=${true} defaultValue=${query} />
            <input className="btn m-0 p-3 search-btn" type="submit" value="🔎" />
        </form>
    ');

    override function bodyContent() {
        return jsx('
            <Fragment>
                <div className="mt-5 container">
                    <div className="row justify-content-center">
                        <div className="col-12 col-md-6 col-lg-4 text-center">
                            <img className="w-100" src="/images/logo4.png"/>
                            ${searchForm("")}
                            <img className="w-100" src="/images/logo-b-gif.gif"/>
                            
                            <div>
                                <a href="list/all">全部 Charley Wong 和你查 商業/品牌名單</a>
                            </div>
                        </div>
                    </div>
                </div>
            </Fragment>
        ');
    }
}