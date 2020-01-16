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

    function depCss() return jsx('
        <Fragment>
            <div />
        </Fragment>
    ');

    function depJs() return jsx('
        <Fragment>
        </Fragment>
    ');

    function css() return jsx('
        <Fragment>
        </Fragment>
    ');

    function js() return jsx('
        <Fragment>
        </Fragment>
    ');

    function head() return jsx('
        <head>
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
                <p>Copyright (C) 2020  Giffon Limited</p>
                <p>Charley Wong 和你查嘅<a href="https://github.com/giffon/charleywong" target="_blank">源碼</a>以 <a href="https://www.gnu.org/licenses/gpl-3.0.html" target="_blank">GPL-3.0-or-later</a> 發佈。</p>
                <p>Charley Wong 和你查嘅數據以 <a href="http://opendatacommons.org/licenses/odbl/1.0/" target="_blank">ODbL-1.0</a> 發佈。</p>
            </footer>
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