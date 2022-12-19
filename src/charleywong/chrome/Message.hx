package charleywong.chrome;

enum Message {
    MsgGetEntityFromUrl(url:String);
    MsgImportToCharley(linkUrl:String);
    MsgPostToServer(path:String, jsonContent:Dynamic);
    MsgScrollToJune;
    MsgScrollEndless;
    MsgUpdateEntityIndex(showNotification:Bool);
}