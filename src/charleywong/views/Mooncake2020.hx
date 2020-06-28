package charleywong.views;

class Mooncake2020 extends View {
    var data(get, null):Array<charleywong.browser.Mooncake2020.MooncakeData>;
    function get_data() return props.data;

    override public function title() return "Charley嘅黃金月餅攻略";
    override public function description() return "Charley Wong 和你理 整合出多間黃店月餅資訊.";
    override public function render() {
        return super.render();
    }

    override function bodyClasses():Array<String> {
        return super.bodyClasses().concat(["page-mooncake2020"]);
    }

    override function css() return jsx('
        <Fragment>
            ${super.css()}
            <link rel="stylesheet" href=${R("/css/mooncake2020.css")} />
        </Fragment>
    ');

    override function bodyContent() {
        return jsx('
            <div className="container-fluid">
                <h1>${title()}</h1>
                <div className="mooncake2020" data-mooncake2020=${Json.stringify(data)} />
            </div>
        ');
    }
}