package js.npm.snowball_stemmers;

@:jsRequire("snowball-stemmers")
extern class SnowballStemmers {
    static public function newStemmer(language:String):Stemmer;
    static public function algorithms():Array<String>;
}

extern class Stemmer {
    public function stem(word:String):String;
}
