package charleywong.chrome;

import js.html.URL;
import chrome.Tabs.Tab;
import haxe.*;
import haxe.io.Path;
import js.lib.Promise;
import js.Browser.*;
import charleywong.UrlExtractors.*;
import chrome.*;
using Lambda;

enum abstract MenuId(String) to String {
    var MenuOpenWebsite;
    var MenuUpdateEntityIndex;
    var MenuImport;
    var MenuScrollToJune;
}

class Background {
    static var entityIndex:Promise<EntityIndex> = fetchEntityIndex();

    static function updateEntityIndex(showNotification:Bool):Promise<EntityIndex> {
        entityIndex = fetchEntityIndex();
        if (showNotification) {
            entityIndex
                .then(function(index:EntityIndex) {
                    Notifications.create({
                        type: "basic",
                        iconUrl: "apple-icon.png",
                        title: "Charley Wong 和你查 完成資料更新",
                        message: '小幫手現有 ${index.entities.count()} 項資料',
                    });
                })
                .catchError(function (err) {
                    Notifications.create({
                        type: "basic",
                        iconUrl: "apple-icon.png",
                        title: "Charley Wong 和你查 資料更新失敗",
                        message: err,
                    });
                });
        }
        return entityIndex;
    }

    static function fetchEntityIndex():Promise<EntityIndex> return new Promise(function(resolve, reject) {
        Settings.getSettings().then(function(settings) {
            var jsonUrl = Path.join([settings.serverEndpoint, "list", "all.json"]);
            window.fetch(jsonUrl)
                .then(r -> r.json())
                .then(function(entities:Array<Entity>) {
                    resolve(new EntityIndex([for (e in entities) e.id => e]));
                })
                .catchError(function(err) {
                    console.error('Failed to fetch $jsonUrl');
                    reject(err);
                });
        });
    });


    static function onMessage(?request:Dynamic, sender, sendResponse:Dynamic->Void) {
        switch (Unserializer.run(request):Message) {
            case MsgGetEntityFromFb(fb):
                entityIndex.then(function(index) {
                    switch (index.entitiesOfFbPage[fb]) {
                        case null:
                            sendResponse(false);
                        case e:
                            sendResponse(e);
                    }
                });
                return true;
            case MsgUpdateEntityIndex(showNotification):
                updateEntityIndex(showNotification);
                sendResponse(null);
                return false;
            case _:
                throw 'Unknown request: $request';
        }
    }

    static function onStorageChanged(changes:DynamicAccess<{oldValue:Dynamic, newValue:Dynamic}>, namespace):Void {
        for (key => change in changes) {
            switch (key) {
                case "serverEndpoint":
                    updateEntityIndex(true);
                case _:
                    // pass
            }
        }
    }

    static final updateEntitiesTimer = {
        var t = new haxe.Timer(6 * 60 * 60 * 1000); // 6 hours
        t.run = function() updateEntityIndex(true);
        t;
    }

    static function onContextMenusClicked(
        info:{
            menuItemId : Dynamic,
            ?parentMenuItemId : Dynamic,
            ?mediaType : String,
            ?linkUrl : String,
            ?srcUrl : String,
            ?pageUrl : String,
            ?frameUrl : String,
            ?frameId : Int,
            ?selectionText : String,
            editable : Bool,
            ?wasChecked : Bool,
            ?checked : Bool
        },
        ?tab:Tab
    ):Void {
        switch (info.menuItemId) {
            case MenuOpenWebsite:
                Settings.getSettings().then(function(settings) {
                    Tabs.create({
                        url: settings.serverEndpoint,
                    });
                });
            case MenuUpdateEntityIndex:
                updateEntityIndex(true);
            case MenuImport:
                if (info.linkUrl != null) {
                    Tabs.sendMessage(tab.id, Serializer.run(Message.MsgImportToCharley(info.linkUrl)));
                    return;
                }

                var url = switch (extractFbAboutPage(new URL(tab.url))) {
                    case null:
                        tab.url;
                    case handle:
                        'https://www.facebook.com/$handle/';
                }
                Tabs.sendMessage(tab.id, Serializer.run(Message.MsgImportToCharley(url)));
            case MenuScrollToJune:
                Tabs.sendMessage(tab.id, Serializer.run(Message.MsgScrollToJune));
            case _:
                throw 'Cannot handle $info';
        }
    }

    static function main():Void {
        Runtime.onMessage.addListener(onMessage);
        Storage.onChanged.addListener(onStorageChanged);
        ContextMenus.onClicked.addListener(onContextMenusClicked);
        Runtime.onInstalled.addListener(function(evt) {
            ContextMenus.create({
                id: MenuOpenWebsite,
                title: "打開 Charley Wong 和你查",
                contexts: ["page_action"]
            });
            ContextMenus.create({
                id: MenuUpdateEntityIndex,
                title: "更新資料",
                contexts: ["page_action"]
            });
            ContextMenus.create({
                id: MenuImport,
                title: "輸入到 Charley Wong 和你查",
                contexts: ["link", "page_action"]
            });
            ContextMenus.create({
                id: MenuScrollToJune,
                title: "回溯到2019年6月頭",
                documentUrlPatterns: ["https://www.facebook.com/pg/*/posts/*"],
                contexts: ["page"]
            });
        });
    }
}