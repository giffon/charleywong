package charleywong.views;

class View extends ReactComponent {
    function title():String return "Charley Wong 和你查";

    function description():Null<String> return null;
    function descriptionTag() return switch description() {
        case null:
            null;
        case desc:
             jsx('
                <meta name="description" content=${desc} />
            ');
    };

    function canonical():String throw "should be overridden";

    function gtag() {
        var content = {
            __html: "
                window.dataLayer = window.dataLayer || [];
                function gtag(){dataLayer.push(arguments);}
                gtag('js', new Date());
                gtag('config', 'UA-156524141-1');
            "
        };
        return jsx('
            <Fragment>
                <script async=${true} src="https://www.googletagmanager.com/gtag/js?id=UA-156524141-1"></script>
                <script dangerouslySetInnerHTML=${content}></script>
            </Fragment>
        ');
    }

    function depCss() return jsx('
        <Fragment>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y=" crossOrigin="anonymous" />
        </Fragment>
    ');

    function depJs() return jsx('
        <Fragment>
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossOrigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js" integrity="sha256-OUFW7hFO0/r5aEGTQOz9F/aXQOt+TwqI1Z4fbVvww04=" crossOrigin="anonymous"></script>
        </Fragment>
    ');

    function footJs() return jsx('
        <Fragment>
            <script src=${R("/trackExceptions.js")}></script>
            <script src="//instant.page/5.1.0" type="module" integrity="sha384-by67kQnR+pyfy8yWP4kPO12fHKRLHZPfEsiSXR8u2IKcTdxD805MGUXBzVPnkLHw"></script>
        </Fragment>
    ');

    function css() return jsx('
        <Fragment>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC&family=Nunito&display=swap"/>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossOrigin="anonymous" />
            <link rel="stylesheet" href=${R("/css/style.css")} />
        </Fragment>
    ');

    function script() return jsx('
        <Fragment>
            <script src="//platform.instagram.com/en_US/embeds.js"></script>
            <script src=${R("/browser.bundled.js")}></script>
        </Fragment>
    ');

    function favicon() return jsx('
        <Fragment>
            <link rel="apple-touch-icon" sizes="57x57" href=${R("/images/fav/apple-icon-57x57.png")}/>
            <link rel="apple-touch-icon" sizes="60x60" href=${R("/images/fav/apple-icon-60x60.png")}/>
            <link rel="apple-touch-icon" sizes="72x72" href=${R("/images/fav/apple-icon-72x72.png")}/>
            <link rel="apple-touch-icon" sizes="76x76" href=${R("/images/fav/apple-icon-76x76.png")}/>
            <link rel="apple-touch-icon" sizes="114x114" href=${R("/images/fav/apple-icon-114x114.png")}/>
            <link rel="apple-touch-icon" sizes="120x120" href=${R("/images/fav/apple-icon-120x120.png")}/>
            <link rel="apple-touch-icon" sizes="144x144" href=${R("/images/fav/apple-icon-144x144.png")}/>
            <link rel="apple-touch-icon" sizes="152x152" href=${R("/images/fav/apple-icon-152x152.png")}/>
            <link rel="apple-touch-icon" sizes="180x180" href=${R("/images/fav/apple-icon-180x180.png")}/>
            <link rel="icon" type="image/png" sizes="192x192"  href=${R("/images/fav/android-icon-192x192.png")}/>
            <link rel="icon" type="image/png" sizes="32x32" href=${R("/images/fav/favicon-32x32.png")}/>
            <link rel="icon" type="image/png" sizes="96x96" href=${R("/images/fav/favicon-96x96.png")}/>
            <link rel="icon" type="image/png" sizes="16x16" href=${R("/images/fav/favicon-16x16.png")}/>
            <link rel="manifest" href=${R("/images/fav/manifest.json")}/>
            <meta name="msapplication-TileColor" content="#ffffff" />
            <meta name="msapplication-TileImage" content=${R("/images/fav/ms-icon-144x144.png")} />
            <meta name="theme-color" content="#ffffff" />
        </Fragment>
    ');

    function prefetch():Array<String> return [];
    function prefetchNode(link:String) return jsx('<link key=${link} rel="prefetch" href=${link} />');

    function ogMeta() return jsx('
        <Fragment>
            <meta property="fb:app_id" content=${Facebook.appId} />
            <meta property="og:title" content=${title()} />
            <meta property="og:description" content=${description()} />
            <meta property="og:url" content=${canonical()} />
        </Fragment>
    ');

    function head() return jsx('
        <head>
            ${gtag()}
            <meta charSet="UTF-8" />
            <meta httpEquiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <title>${title()}</title>

            <link rel="manifest" href="/manifest.webmanifest" />
            <meta name="mobile-web-app-capable" content="yes" />
            <meta name="apple-mobile-web-app-capable" content="yes" />
            <meta name="application-name" content="Charley Wong 和你查" />
            <meta name="apple-mobile-web-app-title" content="Charley Wong 和你查" />
            <meta name="msapplication-starturl" content="/" />

            ${favicon()}
            ${descriptionTag()}
            <link rel="canonical" href=${canonical()} />
            ${ogMeta()}
            ${depCss()}
            ${depJs()}
            ${css()}
            ${script()}
            ${prefetch().map(prefetchNode)}
        </head>
    ');

    function bodyClasses():Array<String> {
        return [];
    }

    function bodyAttributes():DynamicAccess<String> {
        return {};
    }

    function bodyContent() return null;

    function body() return jsx('
        <body className=${bodyClasses().join(" ")} {...bodyAttributes()}>
            <div className="content">
                ${bodyContent()}
            </div>
            <div className="mt-3 mt-md-5 text-center container">
                <div className="col-12">
                    <a href="https://ssprangers.com/"><img className="img-fluid d-none d-sm-inline" src=${R("/images/good-970-90.jpg")} alt="深水埗黃店美食 埗兵外賣俾你食"/></a>
                    <a href="https://ssprangers.com/"><img className="img-fluid d-inline d-sm-none" src=${R("/images/good-320-50.jpg")} alt="深水埗黃店美食 埗兵外賣俾你食"/></a>
                </div>
                <div className="col-12 mt-1 color_black_o60">
                    <a href="/campaign">你都想 Charley 幫你宣傳? 入嚟睇吓我哋嘅廣告宣傳計劃</a>
                </div>
            </div>
            <div className="mt-3 mt-md-5 container-intro text-center color_black_o60">
                <h3 className="pt-5">Charley 其實係咩?</h3>
                
                <div className="container d-md-flex">
                        
                        <div className="col-12 col-md-6">
                            <div>
                                <img className="img-fluid w-75 p-3 px-md-4 px-lg-5" src=${R("/images/circle.png")} alt="yellow economic circle" width="700" height="500" />
                            </div>
                            <div className="text-center px-lg-5 pb-4 py-md-0 color_black_o60">
                                <div className="container-yc"><span className="yc">黃</span><span className="yc">色</span><span className="yc">經</span><span className="yc">濟</span><span className="yc">圈</span></div>
                                <p className="p-3">Charley Wong 和你查 搜集多個商店、創作人、專頁，以第一身表態支持 #香港人 #反送中，爭取 #自由 #民主 的良心發言。當中有高調行動，有低調暗示，我地不作篩選，各位自行以個人喜好辨別。</p>
                            </div>
                        </div>

                        <div className="col-12 col-md-6">
                            <div>
                                <img className="img-fluid w-75 p-3 px-md-4 px-lg-5" src=${R("/images/open.png")} alt="open source" width="700" height="500"/>
                            </div>
                            <div className="text-center px-lg-5 pb-4 py-md-0 color_black_o60">
                                <div><span className="yc">開</span><span className="yc">放</span><span className="yc">數</span><span className="yc">據</span></div>
                                <div><span className="yc">開</span><span className="yc">放</span><span className="yc">原</span><span className="yc">碼</span></div>
                                <p className="p-3">Charley Wong 和你查 以高度透明同公開嘅方式運作，而且鼓勵同路人使用我地嘅成果：我地以 <a name="open-license" href="https://github.com/giffon/charleywong/blob/master/LICENSE">open license</a> 發佈所有<a name="github" href="https://github.com/giffon/charleywong">數據同原碼</a>。任何人只要註明出處，都可以隨意使用。</p>
                            </div>
                        </div>
                    
                </div>

                <h5 className="px-3 py-5">Charley 現時收錄咗 ${ServerMain.entityIndex.entities.filter(e -> e.posts.length > 0).count()} 項資料，並持續增加中<br/><a href="/list/all">睇晒完整目錄</a></h5>
            </div>
            <div className="mt-5 container">
                <div className="d-md-flex color_black_o60">
                    <div className="m-md-3 mb-3 p-3 p-md-4 p-lg-5 bg-stripe-y rounded-10 text-center col">
                        <h5 className="text-center"><i className="far fa-bell"></i> 追蹤 Charley</h5>
                        <p>睇下 Charley 介紹咗咩精選黃店，亦歡迎朋友搵 Charley 報料。</p>
                        <h2><a className="color_fb" title="Charley on Facebook" name="facebook" href="https://www.facebook.com/charleywong2020"><i className="fab fa-facebook"></i></a>&nbsp;&nbsp;<a className="color_ig"  title="Charley on Instagram" name="instagram" href="https://www.instagram.com/charleywongwong/"><i className="fab fa-instagram"></i></a></h2>
                    </div>

                    <div className="m-md-3 mb-3 p-3 p-md-4 p-lg-5 bg-stripe-y rounded-10 text-center col"> 
                        <h5 className="text-center"><i className="fas fa-laptop-code"></i> 使用 Charley 數據</h5>
                        <p className="mb-0">Charley Wong 和你查 嘅<a name="github" href="https://github.com/giffon/charleywong">原碼</a>以 <a name="gpl" href="https://www.gnu.org/licenses/gpl-3.0.html" target="_blank">GPL-3.0-or-later</a> 發佈，數據以 <a name="opendatacommons" href="http://opendatacommons.org/licenses/odbl/1.0/">ODbL-1.0</a> 發佈。</p>
                    </div>
                    
                    <div className="m-md-3 mb-3 p-3 p-md-4 p-lg-5 bg-stripe-y rounded-10 text-center col">
                        <h5 className="text-center"><i className="fas fa-baby"></i> 邊個整 Charley</h5>
                        <p>Charley 嘅父母係 <a title="giffon.io" href="https://giffon.io">Giffon</a>, 一個幫大家眾籌禮物的平台。</p>
                        <p className="mb-0">另外，我哋<a title="終極黃藍地圖" href="https://www.facebook.com/charleywong2020/posts/151433913066302">同終極黃藍地圖合作</a>，持續互相完善雙方嘅資料。</p>
                    </div>
                </div>
            </div>

            <footer className="color_black_o60 py-3">
                <p>
                    Copyright (C) 2020-2021 <a href="https://giffon.io">Giffon Limited</a>
                </p>
                <p>
                    <a href="https://giffon.io/terms">Terms and Conditions</a> <a href="https://giffon.io/privacy">Privacy Policy</a>
                </p>
            </footer>
            ${footJs()}
        </body>
    ');

    override function render() {
        return jsx('
            <html lang="zh">
                ${head()}
                ${body()}
            </html>
        ');
    }
}