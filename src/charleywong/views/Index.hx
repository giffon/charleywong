package charleywong.views;

import charleywong.EntityIndex;

class Index extends View {
    override public function description() return "一個開放源碼同開放數據嘅商業/品牌目錄.";
    override public function render() {
        return super.render();
    }

    static public function searchForm(query:String, autoFocus:Bool) return jsx('
        <form className="d-flex" action="/" autoComplete=${query == "" ? "on" : "off"}>
            <input className="w-100 p-3 search-input" type="text" name="search" placeholder="商業/專頁名稱" defaultValue=${query} autoFocus=${autoFocus} />
            <input className="btn m-0 p-3 search-btn" type="submit" value="🔎" />
        </form>
    ');

    override function bodyContent() {
        return jsx('
            <Fragment>
            <br/><br/><br/><br/>
            <div className="container">
                <div className="container-search">
                    <div className="position-relative">
                        <a href="/">
                            <img className="img-fluid logo-c col-4 col-md-3 col-lg-2" src=${R("/images/charley-600-w.png")} alt="Charley Wong 和你查" width="600" height="600" />
                        </a>
                    </div>
                    <br/><br/><br/><br/>
                    <div className="row justify-content-center">
                        <div className="py-5 p-md-5 col-11 col-lg-8">
                            <h2>今日想Charley幫你查咩?</h2>
                            ${searchForm("", true)}
                            <div className="p-1 color_black_o60 container-tags">
                                <ul className="tags d-inline">
                                    <li><a href="/search/coffee">咖啡</a></li>
                                    <li><a href="/search/burger">漢堡</a></li>
                                    <li><a href="/search/soap">番梘</a></li>
                                    <li><a href="/search/moving">搬屋</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div className="py-4 p-md-5">
                        <p className="text-center color_black_o60">"一日一黃店 世界更美妙" - Charley</p>
                    </div>
                </div>
            </div>

            
            </Fragment>
        ');
    }
}