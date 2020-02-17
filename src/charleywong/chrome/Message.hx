package charleywong.chrome;

enum Message {
    MsgGetEntityFromFb(fb:String);
    MsgImportToCharley(linkUrl:String);
    MsgUpdateEntityIndex;
}