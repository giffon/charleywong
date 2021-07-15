package charleywong.chrome;

typedef SettingsData = {
    ?serverEndpoint:String,
    ?dataEntryMode:Bool,
    ?serializedEntities:Serialized<Map<String, Entity>>,
}