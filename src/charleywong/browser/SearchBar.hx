package charleywong.browser;

import js.Browser;
import js.html.*;
import react.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
using StringTools;

typedef SearchBarProps = {
    final defaultQuery:String;
    final autoFocus:Bool;
}

typedef SearchBarState = {
    final query:String;
    final disabled:Bool;
}

class SearchBar extends ReactComponentOf<SearchBarProps, SearchBarState> {
    var defaultQuery(get, never):String;
    function get_defaultQuery() return props.defaultQuery;

    var autoFocus(get, never):Bool;
    function get_autoFocus() return props.autoFocus;

    var query(get, set):String;
    function get_query() return state.query;
    function set_query(v) {
        setState({
            query: v,
        });
        return v;
    }

    var disabled(get, set):Bool;
    function get_disabled() return state.disabled;
    function set_disabled(v) {
        setState({
            disabled: v,
        });
        return v;
    }

    function new(props) {
        super(props);
        state = {
            query: defaultQuery,
            disabled: false,
        };
    }

    function handleSubmit(event:Event) {
        event.preventDefault();
        disabled = true;
        Browser.location.href = "/?search=" + query.urlEncode();
    }

    override function render() {
        return jsx('
            <form
                className="d-flex"
                action="/"
                autoComplete=${defaultQuery == null || defaultQuery == "" ? "on" : "off"}
                onSubmit=${handleSubmit}
            >
                <input
                    className="w-100 p-3 search-input"
                    type="text"
                    name="search"
                    placeholder="商業/專頁名稱"
                    value=${query}
                    onChange=${(evt) -> query = evt.target.value}
                    autoFocus=${autoFocus}
                    disabled=${disabled}
                />
                <input
                    className="btn m-0 p-3 search-btn"
                    name="submit"
                    type="submit"
                    value="🔎"
                    disabled=${disabled}
                />
            </form>
        ');
    }
}