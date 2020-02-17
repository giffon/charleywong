package charleywong.chrome;

typedef FacebookProfile = {
    url:String,
    handle:String,
    id:String,
    name:String,
    about:String,
    addr:Null<{
        line:String,
        area:String,
    }>,
    email:Null<String>,
    ig:Null<String>,
    websites:Array<String>,
    tel:Null<String>,
    categories:Array<String>,
};