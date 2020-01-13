package withyoulike.views;

import react.*;
import react.Fragment;
import react.ReactMacro.jsx;
import haxe.*;
import haxe.io.*;
using StringTools;

class View extends ReactComponent {
    function title():String return "和你Like";

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