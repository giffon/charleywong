package charleywong.views;

class Campaign extends View {
    override public function title() return "廣告宣傳計劃";
    override public function description() return "喺 Charley Wong 和你查 放置廣告，宣傳你嘅產品服務。";
    override function canonical() return Path.join([ServerMain.domain, "campaign"]);
    override public function render() {
        return super.render();
    }

    override function bodyContent() {
        return jsx('
            <div className="container">
                <div className="mx-auto col-12 col-md-8">
      
                        <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                            
                            <div className="pt-4 px-4 pt-lg-5 px-lg-5 bg-white rounded-10">
                            <div className="">
                                <div className="">
                                    <h4 className="">Feature Site</h4>
                                    <p>最簡單嘅宣傳方式</p>
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-map-marker-alt"></i> 位置</span>
                                    <p>主頁、搜尋結果</p>
                                    </div>
                
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-cog"></i> 格式</span>
                                    <p>JPG/PNG</p>
                                    </div>
                
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-tag"></i> 價格</span>
                                    <p>HK$$500</p>
                                    </div>
                                </div>
                                <div className="">
                                    <img className="w-100" src=${R("/images/cap-4.png")} />
                                </div>
                            </div>
                            </div>
                        </div>
                
                        <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                            
                            <div className="pt-4 px-4 pt-lg-5 px-lg-5 bg-white rounded-10">
                            <div className="d-md-flex">
                                <div className="col">
                                    <h4 className="">Banner</h4>
                                    <p>最簡單嘅宣傳方式</p>
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-map-marker-alt"></i> 位置</span>
                                    <p>主頁、搜尋結果</p>
                                    </div>
                
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-cog"></i> 格式</span>
                                    <p>JPG/PNG</p>
                                    </div>
                
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-tag"></i> 價格</span>
                                    <p>HK$$500</p>
                                    </div>
                                </div>
                                <div className="col">
                                    <img className="w-100" src=${R("/images/cap-1.jpg")} />
                                    
                                </div>
                            </div>
                            </div>
                        </div>
                
                        <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                            
                            <div className="pt-4 px-4 pt-lg-5 px-lg-5 bg-white rounded-10">
                            <div className="d-md-flex">
                                <div className="col">
                                    <img className="w-100" src=${R("/images/cap-2.jpg")} />
                                    
                                </div>
                                <div className="col">
                                    <h4 className="">Search Result Ordering</h4>
                                    <p>最簡單嘅宣傳方式</p>
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-map-marker-alt"></i> 位置</span>
                                    <p>主頁、搜尋結果</p>
                                    </div>
                
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-cog"></i> 格式</span>
                                    <p>JPG/PNG</p>
                                    </div>
                
                                    <div className="pl-2 border-left">
                                    <span className="color_black_o60"><i className="fas fa-tag"></i> 價格</span>
                                    <p>HK$$500</p>
                                    </div>
                                </div>
                                
                            </div>
                            </div>
                        </div>
                
                        <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                            
                            <div className="pt-4 px-4 p-lg-5 bg-white rounded-10">
                            <h4 className="">Search Result Ordering</h4>
                            <ul>
                                <li>12</li>
                                <li>34</li>
                            </ul>
                            
                            </div>
                        </div>
                </div>
            </div>
        ');
    }
}