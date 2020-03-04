package charleywong.chrome;

enum Message {
    MsgGetEntityFromUrl(url:String);
    MsgImportToCharley(linkUrl:String);
    MsgScrollToJune;
    MsgUpdateEntityIndex(showNotification:Bool);
}