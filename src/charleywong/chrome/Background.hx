package charleywong.chrome;

import js.html.AbortController;
import js.html.URL;
import chrome.Tabs.Tab;
import haxe.*;
import haxe.io.Path;
import js.lib.Promise;
import js.Browser.*;
import charleywong.UrlExtractors.*;
import chrome.*;
using Lambda;
using StringTools;

enum abstract MenuId(String) to String {
    var MenuOpenWebsite;
    var MenuUpdateEntityIndex;
    var MenuImportPage;
    var MenuImportLink;
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

    static function fetchEntities(ids:Array<String>):Promise<Array<Entity>> {
        var batchSize = 100;
        if (ids.length <= batchSize) {
            return Settings.getSettings().then(settings ->
                cast Promise.all(
                    ids.map(id -> {
                        var entityJsonUrl = Path.join([settings.serverEndpoint, id + ".json"]);
                        window.fetch(entityJsonUrl)
                            .then(r -> r.json())
                            .catchError(function(err) {
                                console.error('Failed to fetch $entityJsonUrl');
                                throw err;
                            });
                    })
                )
            );
        } else {
            return fetchEntities(ids.slice(0, batchSize)).then(first ->
                fetchEntities(ids.slice(batchSize))
                    .then(remainings -> first.concat(remainings))
            );
        }
    }

    static function fetchEntityIndex():Promise<EntityIndex> return new Promise(function(resolve, reject) {
        BrowserAction.setBadgeText({
            text: "⏳",
        });
        Settings.getSettings().then(function(settings) {
            var jsonUrl = Path.join([settings.serverEndpoint, "list", "all.json"]);
            var abort = new AbortController();
            Timer.delay(() -> abort.abort(), 5000);
            window.fetch(jsonUrl, {
                signal: abort.signal,
            })
                .then(r -> r.json())
                .then(fetchEntities)
                .then(entities ->
                    resolve(new EntityIndex([for (e in (cast entities:Array<Entity>)) e.id => e]))
                )
                .then(_ -> BrowserAction.setBadgeText({
                    text: "",
                }))
                .catchError(function(err) {
                    BrowserAction.setBadgeText({
                        text: "⚠"
                    });
                    console.error('Failed to fetch $jsonUrl');
                    reject(err);
                });
        });
    });

    static function onMessage(?request:Dynamic, sender, sendResponse:Dynamic->Void) {
        switch (Unserializer.run(request):Message) {
            case MsgGetEntityFromUrl(url):
                entityIndex.then(function(index) {
                    var url = try {
                        new URL(url);
                    } catch (err:Dynamic) {
                        sendResponse(false);
                        return;
                    }
                    switch (url) {
                        case extractFbPost(_) => fb if (fb != null):
                            switch (index.entitiesOfFbPage[fb]) {
                                case null:
                                    sendResponse(false);
                                case e:
                                    // check whether it's actually a post url or just a link to the photo/video page
                                    if (["/photos/", "/videos/"].exists(surfix -> url.pathname.endsWith(surfix))) {
                                        sendResponse(false);
                                    } else {
                                        sendResponse(e);
                                    }
                            }
                        case extractFbHomePage(_) => fb if (fb != null):
                            switch (index.entitiesOfFbPage[fb]) {
                                case null:
                                    sendResponse(false);
                                case e:
                                    sendResponse(e);
                            }
                        case _:
                            switch (index.entitiesOfUrl[cleanUrl(Std.string(url))]) {
                                case null:
                                    sendResponse(false);
                                case e:
                                    sendResponse(e);
                            }
                            null;
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
                case "dataEntryMode":
                    ContextMenus.removeAll(function() {
                        addMenus(change.newValue);
                    });
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
            case MenuImportPage | MenuImportLink:
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

    static function addMenus(dataEntryMode:Bool):Void {
        ContextMenus.create({
            id: MenuOpenWebsite,
            title: "打開 Charley Wong 和你查",
            contexts: ["browser_action"]
        });
        ContextMenus.create({
            id: MenuUpdateEntityIndex,
            title: "更新資料",
            contexts: ["browser_action"]
        });

        if (dataEntryMode) {
            ContextMenus.create({
                id: MenuImportPage,
                title: "輸入此網頁到 Charley Wong 和你查",
                contexts: ["page", "page_action"]
            });
            ContextMenus.create({
                id: MenuImportLink,
                title: "輸入此連結到 Charley Wong 和你查",
                contexts: ["link"]
            });
        }

        ContextMenus.create({
            id: MenuScrollToJune,
            title: "回溯到2019年6月頭",
            documentUrlPatterns: [
                "https://www.facebook.com/*"
            ],
            contexts: ["page"]
        });
    }

    static function main():Void {
        Runtime.onMessage.addListener(onMessage);
        Storage.onChanged.addListener(onStorageChanged);
        ContextMenus.onClicked.addListener(onContextMenusClicked);
        Runtime.onInstalled.addListener(function(evt) {
            Settings.getSettings().then(function(settings) {
                addMenus(settings.dataEntryMode);
            });
        });
    }
}