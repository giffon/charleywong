package charleywong;

using Lambda;

class EntityTools {
    static public function areas(e:Entity):Array<String> {
        if (e.places == null)
            return [];

        return e.places.map(p -> p.area != null ? p.area.printAll() : null)
            .filter(a -> a != null)
            .fold((item, result:Array<String>) -> result.has(item) ? result : result.concat([item]), []);
    }
}