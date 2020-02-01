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
            <script async=${true} defer=${true} crossOrigin="anonymous" src="https://connect.facebook.net/zh_HK/sdk.js#xfbml=1&version=v5.0&appId=628806881259482&autoLogAppEvents=1"></script>
            <script async=${true} crossOrigin="anonymous" src="//www.instagram.com/embed.js"></script>
        </Fragment>
    ');

    function footJs() return jsx('
        <Fragment>
            <script async=${true} src="//www.instagram.com/embed.js"></script>
        </Fragment>
    ');

    function css() return jsx('
        <Fragment>
            <link rel="stylesheet" href="/css/style.css" />
        </Fragment>
    ');

    function js() return jsx('
        <Fragment>
        </Fragment>
    ');

    function head() return jsx('
        <head>
            ${gtag()}
            <meta charSet="UTF-8" />
            <meta httpEquiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <title>${title()}</title>
            ${descriptionTag()}
            ${depCss()}
            ${depJs()}
            ${css()}
            ${js()}
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
            <footer>
                <p>
                    Copyright (C) 2020  <a href="https://giffon.io" target="_blank">Giffon Limited</a>
                    <span
                        className="fb-like ml-1 d-inline"
                        data-href="https://www.facebook.com/giffon.io/"
                        data-width=""
                        data-layout="button_count"
                        data-action="like"
                        data-size="small"
                        data-share="false">
                    </span>
                </p>
                <p>Charley Wong 和你查嘅<a href="https://github.com/giffon/charleywong" target="_blank">源碼</a>以 <a href="https://www.gnu.org/licenses/gpl-3.0.html" target="_blank">GPL-3.0-or-later</a> 發佈。</p>
                <p>Charley Wong 和你查嘅數據以 <a href="http://opendatacommons.org/licenses/odbl/1.0/" target="_blank">ODbL-1.0</a> 發佈。</p>
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