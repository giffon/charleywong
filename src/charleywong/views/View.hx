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

    function path():String throw "should be overridden";

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
            <script async=${true} defer=${true} crossOrigin="anonymous" src="https://connect.facebook.net/zh_HK/sdk.js#xfbml=1&version=v6.0&appId=628806881259482&autoLogAppEvents=1"></script>
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossOrigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js" integrity="sha256-OUFW7hFO0/r5aEGTQOz9F/aXQOt+TwqI1Z4fbVvww04=" crossOrigin="anonymous"></script>
        </Fragment>
    ');

    function footJs() return jsx('
        <Fragment>
            <script async=${true} src="//www.instagram.com/embed.js"></script>
            <script src="//instant.page/3.0.0" type="module" defer=${true} integrity="sha384-OeDn4XE77tdHo8pGtE1apMPmAipjoxUQ++eeJa6EtJCfHlvijigWiJpD7VDPWXV1"></script>
        </Fragment>
    ');

    function css() return jsx('
        <Fragment>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito|Noto+Sans+TC&display=swap"/>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossOrigin="anonymous" />
            <link rel="stylesheet" href=${R("/css/style.css")} />
        </Fragment>
    ');

    function js() return jsx('
        <Fragment>
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

    function head() return jsx('
        <head>
            ${gtag()}
            <meta charSet="UTF-8" />
            <meta httpEquiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <title>${title()}</title>
            ${favicon()}
            ${descriptionTag()}
            ${depCss()}
            ${depJs()}
            ${css()}
            ${js()}
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
            <footer className="color_black_o60">
                <p>
                    Copyright (C) 2020  <a href="https://giffon.io">Giffon Limited</a>
                    <span
                        className="fb-like ml-1 d-inline align-text-bottom"
                        data-href="https://www.facebook.com/giffon.io/"
                        data-width=""
                        data-layout="button_count"
                        data-action="like"
                        data-size="small"
                        data-share="false">
                    </span>
                </p>
                <p>Charley Wong 和你查 嘅<a href="https://github.com/giffon/charleywong">原碼</a>以 <a href="https://www.gnu.org/licenses/gpl-3.0.html" target="_blank">GPL-3.0-or-later</a> 發佈。</p>
                <p>Charley Wong 和你查 嘅數據以 <a href="http://opendatacommons.org/licenses/odbl/1.0/">ODbL-1.0</a> 發佈。</p>
                <p>
                    <a href="https://giffon.io/terms">Terms and Conditions</a> 
                    <a href="https://giffon.io/privacy">Privacy Policy</a>
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