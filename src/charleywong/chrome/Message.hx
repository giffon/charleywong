package charleywong.chrome;

enum Message {
    MsgGetEntityFromFb(fb:String);
    MsgImportToCharley(linkUrl:String);
    MsgScrollToJune;
    MsgUpdateEntityIndex;
}