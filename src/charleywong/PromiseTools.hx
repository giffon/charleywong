package charleywong;

import haxe.Timer;
import js.lib.Promise;
using Lambda;

class PromiseTools {
    static public function inSequence<T>(promises:Array<()->Promise<T>>):Promise<Array<T>> {
        return promises.fold((next:()->Promise<T>, result:Promise<Array<T>>) -> {
            result.then(a -> next().then(v -> a.concat([v])));
        }, Promise.resolve([]));
    }

    static public function delay(ms:Int):Promise<{}> {
        return new Promise((resolve, reject) -> {
            Timer.delay(() -> resolve(null), ms);
        });
    }

    static public function retry<T>(p:()->Promise<T>, delay_ms:Int):Promise<T> {
        return p().catchError(err -> {
            trace(err);
            trace("retry...");
            delay(delay_ms).then(_ -> retry(p, delay_ms));
        });
    }
}