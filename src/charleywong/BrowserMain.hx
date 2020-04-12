package charleywong;

import js.html.DivElement;
import react.*;
import react.ReactMacro.jsx;
import js.npm.material_ui.MaterialUi;
import js.jquery.*;
import js.Browser.*;

class Places extends ReactComponent {
    var places(get, null):Array<charleywong.Entity.Place>;
    function get_places() return props.places;

    var selected(get, set):Int;
    function get_selected() return state.selected;
    function set_selected(v) {
        setState({
            selected: v,
        });
        return v;
    }

    function new(props) {
        super(props);
        state = {
            selected: 0,
        };
    }

    function handleChange(event:Dynamic, ?child:Dynamic):Void {
        var v = event.target.value;
        trace(v);
        selected = v;
    }

    override function render() {
        var gmap = switch (places[selected].googleMapsPlaceId) {
            case null:
                null;
            case pid:
                var key = "AIzaSyCq-mjjqgWRRLQAILJFm-gpkH3Cq26GwSk";
                var src = 'https://www.google.com/maps/embed/v1/place?key=${key}&q=place_id:${pid}';
                jsx('
                    <iframe
                        className="place"
                        frameBorder="0"
                        src=${src}
                        allowFullScreen=${true}>
                    </iframe>
                ');
        }
        if (places.length == 1) {
            return jsx('
                <Fragment>
                    <div className="my-1"><i className="fas fa-map-marker-alt mr-1"></i>${places[0].address.printAll()}</div>
                    ${gmap}
                </Fragment>
            ');
        } else {
            var items = [
                for (i in 0...places.length)
                jsx('
                    <MenuItem key=${i} value=${i}><i className="fas fa-map-marker-alt mr-1"></i>${places[i].address.printAll()}</MenuItem>
                ')
            ];
            return jsx('
                <Fragment>
                    <Select
                        value=${selected}
                        onChange=${handleChange}
                        disableUnderline=${true}
                    >
                        ${items}
                    </Select>
                    ${gmap}
                </Fragment>
            ');
        }
    }
}

class BrowserMain {
    static function onReady():Void {
        for (div in document.querySelectorAll("div.places")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <Places places=${haxe.Json.parse(div.dataset.places)} />
            '), div);
        }
    }

    static function main():Void {
        new JQuery(onReady);
    }
}