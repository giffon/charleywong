package charleywong.browser;

import react.*;
import react.ReactMacro.jsx;
import mui.core.*;

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
        selected = v;
    }

    override function render() {
        final gmap = switch (places[selected].googleMapsPlaceId) {
            case null:
                null;
            case pid:
                final key = "AIzaSyCq-mjjqgWRRLQAILJFm-gpkH3Cq26GwSk";
                final src = 'https://www.google.com/maps/embed/v1/place?key=${key}&q=place_id:${pid}';
                jsx('
                    <iframe
                        className="place"
                        frameBorder="0"
                        src=${src}
                        allowFullScreen=${true}>
                    </iframe>
                ');
        }
        final places = places.filter(p -> p.address != null);
        if (places.length == 0) {
            return null;
        } else if (places.length == 1) {
            final place = places[0];
            if (place.address != null)
                return jsx('
                    <Fragment>
                        <div className="my-1"><i className="fas fa-map-marker-alt mr-1"></i>${place.address.print([zh, en])}</div>
                        ${gmap}
                    </Fragment>
                ');
            else
                return gmap;
        } else {
            final items = [
                for (i in 0...places.length)
                if (places[i].address != null)
                jsx('
                    <MenuItem key=${i} value=${i}><i className="fas fa-map-marker-alt mr-1"></i>${places[i].address.print([zh, en])}</MenuItem>
                ')
            ];
            return jsx('
                <Fragment>
                    <div>
                        <Select
                            value=${selected}
                            onChange=${handleChange}
                            disableUnderline=${true}
                        >
                            ${items}
                        </Select>
                        <span className="whitespace-nowrap text-gray-600">共 ${places.length} 個地址</span>
                    </div>
                    ${gmap}
                </Fragment>
            ');
        }
    }
}