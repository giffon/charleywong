package charleywong.browser;

import react.*;
import react.ReactMacro.jsx;
import js.npm.material_ui.MaterialUi;

@:jsRequire("react-masonry-css", "default")
extern class Masonry extends ReactComponent {

}

class Mooncake2020 extends ReactComponent {
    var data(get, null):Array<Mooncake2020Data>;
    function get_data() return props.data;

    function renderType(mooncakeType:String, past:Bool) {
        var classes = ["mr-2"];
        if (past)
            classes.push("past");
        return jsx('
            <span key=${mooncakeType} className=${classes.join(" ")}>${mooncakeType}</span>
        ');
    }

    function renderMooncake2020Data(d:Mooncake2020Data) {
        return jsx('
            <div key=${d.name} className="card">
                <div className="card-body">
                    <h5 className="card-title">${d.name}</h5>
                    <h6 className="card-subtitle mb-2 text-muted">${d.note}</h6>
                    <p className="card-text">${d.past_types.map(t -> renderType(t, true)).concat(d.types.map(t -> renderType(t, false)))}</p>
                    <a className="card-link" href=${d.charleywong}>FC</a>
                </div>
            </div>
        ');
    }

    override function render() {
        return jsx('
            <Masonry
                breakpointCols=${3}
                className="masonry-grid"
                columnClassName="masonry-grid-column"
            >
                ${data.map(renderMooncake2020Data)}
            </Masonry>
        ');
    }
}