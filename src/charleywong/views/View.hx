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

    function depCss() return jsx('
        <Fragment></Fragment>
    ');

    function depJs() return jsx('
        <Fragment></Fragment>
    ');

    function footJs() return jsx('
        <Fragment>
            <script src=${R("/trackExceptions.js")}></script>
        </Fragment>
    ');

    function css() {
        final tailwind = if (charleywong.ServerMain.isMain) {
            null;
        } else {
            jsx('
                <link rel="stylesheet" href=${R("/css/tailwind.css", false)} />
            ');
        };
        return jsx('
            <Fragment>
                <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC&family=Nunito&display=swap"/>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/all.min.css" integrity="sha256-mUZM63G8m73Mcidfrv5E+Y61y7a12O5mW4ezU3bxqW4=" crossOrigin="anonymous" />
                ${tailwind}
                <link rel="stylesheet" href=${R("/css/style.css")} />
            </Fragment>
        ');
    }

    function script() {
        final tailwind = if (charleywong.ServerMain.isMain) {
            jsx('
                <script src="https://cdn.tailwindcss.com"></script>
            ');
        } else {
            null;
        };
        return jsx('
            <Fragment>
                ${tailwind}
                <script src="//platform.instagram.com/en_US/embeds.js"></script>
                <script src=${R("/browser.bundled.js")}></script>
            </Fragment>
        ');
    }

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

    // https://github.com/dewitt/opensearch
    function opensearch() return jsx('
        <link
            rel="search"
            type="application/opensearchdescription+xml"
            href=${R("/opensearch.xml")}
        />
    ');

    function head() return jsx('
        <head profile="http://a9.com/-/spec/opensearch/1.1/">
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
            ${opensearch()}
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
            <div className="mt-3 md:mt-12 text-center container max-w-screen-lg mx-auto px-4 md:px-8">
                <div className="w-full">
                    <a href="https://www.facebook.com/hkssprangers/posts/474379454365622/">
                        <img className="w-full hidden sm:inline" src=${R("/images/banner-recruit-970x90.jpg")} alt="埗兵招人 誠徵佛系兼職外賣員"/>
                        <img className="w-full inline sm:hidden" src=${R("/images/banner-recruit-570x90.jpg")} alt="埗兵招人 誠徵佛系兼職外賣員"/>
                    </a>
                </div>
            </div>
            <div className="mt-3 md:mt-12 container-intro text-center color_black_o60">
                <h3 className="pt-5 text-2xl">Charley 其實係咩?</h3>
                
                <div className="container max-w-screen-lg mx-auto sm:px-4 md:flex">
                        
                        <div className="w-full md:w-1/2 pr-4 pl-4">
                            <div>
                                <img className="max-w-full h-auto w-3/4 p-6 md:px-6 lg:px-12 mx-auto" src=${R("/images/circle.png")} alt="yellow economic circle" width="700" height="500" />
                            </div>
                            <div className="text-center lg:px-12 pb-4 md:py-0 color_black_o60">
                                <div className="container-yc"><span className="yc">黃</span><span className="yc">色</span><span className="yc">經</span><span className="yc">濟</span><span className="yc">圈</span></div>
                                <p className="p-6">Charley Wong 和你查 搜集多個商店、創作人、專頁，以第一身表態支持 #香港人，爭取 #自由 #民主 的良心發言。當中有高調行動，有低調暗示，我地不作篩選，各位自行以個人喜好辨別。</p>
                            </div>
                        </div>

                        <div className="w-full md:w-1/2 pr-4 pl-4">
                            <div>
                                <img className="max-w-full h-auto w-3/4 p-6 md:px-6 lg:px-12 mx-auto" src=${R("/images/open.png")} alt="open source" width="700" height="500"/>
                            </div>
                            <div className="text-center lg:px-12 pb-4 md:py-0 color_black_o60">
                                <div><span className="yc">開</span><span className="yc">放</span><span className="yc">數</span><span className="yc">據</span></div>
                                <div><span className="yc">開</span><span className="yc">放</span><span className="yc">原</span><span className="yc">碼</span></div>
                                <p className="p-6">Charley Wong 和你查 以高度透明同公開嘅方式運作，而且鼓勵同路人使用我地嘅成果：我地以 <a href="https://github.com/giffon/charleywong/blob/master/LICENSE">open license</a> 發佈所有<a href="https://github.com/giffon/charleywong">數據同原碼</a>。任何人只要註明出處，都可以隨意使用。</p>
                            </div>
                        </div>
                    
                </div>

                <h5 className="px-3 py-5">Charley 現時收錄咗 ${ServerMain.entityIndex.entities.filter(e -> e.posts.length > 0).count()} 項資料，並持續增加中<br/><a href="/list/all">睇晒完整目錄</a></h5>
            </div>
            <div className="mt-5 container max-w-screen-lg mx-auto px-4">
                <div className="md:flex color_black_o60">
                    <div className="md:m-4 mb-3 p-6 md:p-6 lg:p-12 bg-stripe-y rounded-10 text-center relative flex-grow max-w-full flex-1 px-4">
                        <h5 className="text-center text-xl mb-2"><i className="far fa-bell"></i> 追蹤 Charley</h5>
                        <p>睇下 Charley 介紹咗咩精選黃店，亦歡迎朋友搵 Charley 報料。</p>
                        <div className="text-3xl mt-2"><a className="color_fb" title="Charley on Facebook" href="https://www.facebook.com/charleywong2020"><i className="fab fa-facebook"></i></a>&nbsp;&nbsp;<a className="color_ig" title="Charley on Instagram" href="https://www.instagram.com/charleywongwong/"><i className="fab fa-instagram"></i></a></div>
                    </div>

                    <div className="md:m-4 mb-3 p-6 md:p-6 lg:p-12 bg-stripe-y rounded-10 text-center relative flex-grow max-w-full flex-1 px-4"> 
                        <h5 className="text-center text-xl mb-2"><i className="fas fa-laptop-code"></i> 使用 Charley 數據</h5>
                        <p className="mb-0">Charley Wong 和你查 嘅<a href="https://github.com/giffon/charleywong">原碼</a>以 <a href="https://www.gnu.org/licenses/gpl-3.0.html" target="_blank" rel="noopener">GPL-3.0-or-later</a> 發佈，數據以 <a href="http://opendatacommons.org/licenses/odbl/1.0/">ODbL-1.0</a> 發佈。</p>
                    </div>
                    
                    <div className="md:m-4 mb-3 p-6 md:p-6 lg:p-12 bg-stripe-y rounded-10 text-center relative flex-grow max-w-full flex-1 px-4">
                        <h5 className="text-center text-xl mb-2"><i className="fas fa-baby"></i> 邊個整 Charley</h5>
                        <p>我哋只係兩個仲未放棄，雖然已經唔喺香港，但依然自認係香港人嘅普通人。</p>
                        <p className="mt-2">另外，我哋<a title="終極黃藍地圖" href="https://www.facebook.com/charleywong2020/posts/151433913066302">同終極黃藍地圖合作</a>，持續互相完善雙方嘅資料。</p>
                    </div>
                </div>
            </div>

            <footer className="color_black_o60 py-3">
                <p>
                    Copyright (C) 2020-2023 <a href="https://charleywong.info">Charley Wong 和你查</a>
                </p>
                <p><a href="/privacy">Privacy Policy</a></p>
            </footer>
            ${footJs()}
        </body>
    ');

    function lang():String return "zh";

    override function render() {
        return jsx('
            <html lang=${lang()}>
                ${head()}
                ${body()}
            </html>
        ');
    }
}