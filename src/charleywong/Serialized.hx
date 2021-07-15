package charleywong;

import haxe.*;

abstract Serialized<T>(String) to String {
    @:from static function serialize<T>(object:T):Serialized<T> {
        return cast Serializer.run(object);
    }

    public function unserialize():T {
        return Unserializer.run(this);
    }
}