package charleywong.views;

class Campaign extends View {
    override public function title() return "廣告宣傳計劃";
    override public function description() return "喺 Charley Wong 和你查 放置廣告，宣傳你嘅產品服務。";
    override function canonical() return Path.join([ServerMain.domain, "campaign"]);
    override public function render() {
        return super.render();
    }

    override function bodyContent() {
        var logoHeaderStyle = {
            backgroundImage: 'url("${R("/images/charley-600-w.png")}")',
        };
        return jsx('
            <div className="container">
                <header className="p-3 p-md-4">
                    <a href="/" className="logo-header" style=${logoHeaderStyle}></a>
                </header>
                <div className="mx-auto col-12 col-md-8">
      
                    <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                        <div className="pt-4 px-4 pt-lg-5 px-lg-5 bg-white rounded-10">
                            <h4 className="">和你查宣傳易</h4>
                            <p>和你查嘅數據庫由2020年1月成立至今，已經收錄了5千多個已表態嘅店舖、專頁、創作者。喺未來，和你查希望探索更多不同合作形式，除咗幫自己開飯，仲希望可以連結大大小小嘅同路人同店鋪，發掘更多可能性。</p>
                            <div className="pl-2 border-left-y">
                                <span className="color_black_o60">先決條件</span>
                                <p>參與嘅朋友要本身已經收錄喺和你查，或者屬於終極黃藍地圖/HKBASE企業名冊。</p>
                            </div>
                            <br/>
                        </div>
                    </div>
    
                    <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                        <div className="pt-4 px-4 pt-lg-5 px-lg-5 bg-white rounded-10">
                                <h4 className="">整合題目專頁</h4>
                                <p>最直接展示產品及服務嘅方式，今年中秋節月餅攻略在Google搜尋中排行第一<br/>未來可以做嘅整合題目：運動、消毒、家具、到會、聖誕禮物...</p>
                                <div className="pl-2 border-left-y">
                                    <span className="color_black_o60">位置及格式</span>
                                    <p>獨立頁面加Facebook/Instagram feed，為期約2個月。</p>
                                </div>
            
                                <div className="pl-2 border-left-y">
                                    <span className="color_black_o60">價格</span>
                                    <p>上架及隨機排位 <span className="badge badge-secondary">免費</span><br/>
                                    上架及最佳排位 <span className="badge badge-info">HK$$ 1,000起</span></p>
                                </div>
                                <img className="w-100" src=${R("/images/cap-4.png")}/>
                        </div>
                    </div>
    
                    <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                        <div className="pt-4 px-4 pt-lg-5 px-lg-5 bg-white rounded-10">
                            <div className="d-md-flex align-items-end">
                                <div className="col p-0 px-md-3">
                                    <h4 className="">Banner</h4>
                                    <p>最自由嘅宣傳方式</p>
                                    <div className="pl-2 border-left-y">
                                    <span className="color_black_o60">位置</span>
                                    <p>主頁、搜尋結果</p>
                                    </div>
                
                                    <div className="pl-2 border-left-y">
                                    <span className="color_black_o60">格式</span>
                                    <p>JPG/PNG(970px x 90px / 320px x 50px)，可附連結</p>
                                    </div>
                
                                    <div className="pl-2 border-left-y">
                                    <span className="color_black_o60">價格</span>
                                    <p>上架為期1個月 <span className="badge badge-info">HK$$ 500起</span></p>
                                    </div>
                                </div>
                                <div className="col p-0 px-md-3">
                                    <img className="w-100" src=${R("/images/cap-1.jpg")}/>         
                                </div>
                            </div>
                        </div>
                    </div>
            
                    <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                        
                        <div className="pt-4 px-4 pt-lg-5 px-lg-5 bg-white rounded-10">
                            <div className="d-flex align-items-end flex-column-reverse flex-md-row">
                                <div className="col p-0 px-md-3">
                                    <img className="w-100" src=${R("/images/cap-2.jpg")}/>
                                    
                                </div>
                                <div className="col p-0 px-md-3">
                                    <h4 className="">搜尋結果排名</h4>
                                    <p>最簡單嘅宣傳方式</p>
                                    <div className="pl-2 border-left-y">
                                    <span className="color_black_o60">位置</span>
                                    <p>指定關鍵字搜尋結果</p>
                                    </div>
                
                                    <div className="pl-2 border-left-y">
                                    <span className="color_black_o60">價格</span>
                                    <p>為期1個月 <span className="badge badge-info">HK$$ 1,000起</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            
                    <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                        <div className="pt-4 px-4 p-lg-5 bg-white rounded-10">
                            <h4 className="">Social Media Feed</h4>
                            <div className="d-md-flex">
                                <div className="pl-2 col border-left-y">
                                <h5>整合 Post <span className="badge badge-secondary">免費</span></h5>
                                <p>Charley會為合作嘅朋友免費出相關嘅整合post一次</p>
                                </div>
                                <div className="pl-2 col border-left-y">
                                <h5>獨立介紹 Post <span className="badge badge-info">另議</span></h5>
                                <p>視乎情況由Charley自己出內容，或由其他創作朋友出內容</p>
                                </div>
                            </div>
                            <br/>
                        </div>
                    </div>
            
                    <div className="mb-3 pl-0 pb-1 pr-1 bg-stripe-y rounded-10 col">
                        <div className="pt-4 px-4 p-lg-5 bg-white rounded-10 border-3">
                            <h4>只要任何捐款俾612/星火或其他同路人團體，可獲相同款項扣減優惠，上限 HK$$500</h4>
                        </div>
                    </div>
                </div>
            </div>
        ');
    }
}