package charleywong.chrome;

import js.Browser.console;
import js.html.AbortController;
import js.html.URL;
import CrossFetch.fetch;
import global.chrome.tabs.Tab;
import haxe.*;
import haxe.io.Path;
import js.lib.Promise;
import charleywong.UrlExtractors.*;
import global.chrome.*;
using Lambda;
using StringTools;

enum abstract MenuId(String) to String {
    final MenuOpenWebsite;
    final MenuUpdateEntityIndex;
    final MenuImportPage;
    final MenuImportLink;
    final MenuScrollToJune;
    final MenuScrollEndless;
    final MenuViewDataInCharleyWong;
}

class Background {
    static var entityIndex:Promise<EntityIndex> = loadEntityIndex();

    static function loadEntityIndex():Promise<EntityIndex> {
        return Settings.getSettings()
            .then(settings ->
                switch (settings.serializedEntities) {
                    case null:
                        fetchEntityIndex();
                    case serializedEntities:
                        Promise.resolve(new EntityIndex(serializedEntities.unserialize()));
                }
            );
    }

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
                .catchError(function (err:js.lib.Error) {
                    Notifications.create({
                        type: "basic",
                        iconUrl: "apple-icon.png",
                        title: "Charley Wong 和你查 資料更新失敗",
                        message: err.message,
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
                        fetch(entityJsonUrl, cast {
                            mode: "cors",
                        })
                            .then(r -> r.json())
                            .catchError(function(err) {
                                trace('Failed to fetch $entityJsonUrl');
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
            final jsonUrl = Path.join([settings.serverEndpoint, "list", "all.json"]);
            final abort = new AbortController();
            Timer.delay(() -> abort.abort(), 5000);
            fetch(jsonUrl, cast {
                mode: "cors",
                signal: abort.signal,
            })
                .then(r -> r.json())
                .then(fetchEntities)
                .then(entities -> {
                    BrowserAction.setBadgeText({
                        text: "",
                    });
                    final entityIndex = new EntityIndex([for (e in (cast entities:Array<Entity>)) e.id => e]);
                    final settings:SettingsData = {
                        serializedEntities: entityIndex.entities,
                    };
                    Storage.local.set(cast settings, () -> {
                        resolve(entityIndex);
                    });
                })
                .catchError(function(err:js.lib.Error) {
                    BrowserAction.setBadgeText({
                        text: "⚠"
                    });
                    trace('Failed to fetch $jsonUrl\n${err.message}');
                    reject(err);
                });
        });
    });

    static function postToServer(path:String, jsonContent:Dynamic):Promise<{}> {
        return Settings.getSettings()
            .then(settings ->
                fetch(Path.join([settings.serverEndpoint, path]), {
                    method: "POST",
                    mode: CORS,
                    cache: NO_CACHE,
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: Json.stringify(jsonContent),
                })
            )
            .then(function(r) {
                return if (r.ok) {
                    new Promise((resolve, reject) -> {
                        Runtime.sendMessage(Serializer.run(Message.MsgUpdateEntityIndex(false)), () -> resolve(null));
                    });
                } else {
                    r.text().then(txt -> {
                        console.error('Failed to post to server: ${r.status}\n${txt}');
                        throw txt;
                    });
                }
            });
    }

    static function getEntityFromUrl(url:String):Promise<Null<Entity>> {
        return entityIndex.then(function(index) {
            var url = new URL(url);
            switch (url) {
                case {
                    origin: "https://www.google.com",
                    pathname: "/url",
                }:
                    url = new URL(url.searchParams.get("q"));
                case _:
                    // pass
            }
            switch (url) {
                case extractFbPost(_) => { handle: handle } if (handle != null):
                    switch (index.entitiesOfFbPage[handle]) {
                        case null:
                            return null;
                        case e:
                            // check whether it's actually a post url or just a link to the photo/video page
                            if (["/photos/", "/videos/"].exists(surfix -> url.pathname.endsWith(surfix))) {
                                return null;
                            } else {
                                return e;
                            }
                    }
                case extractFbHomePage(_) => fb if (fb != null):
                    switch (index.entitiesOfFbPage[fb]) {
                        case null:
                            return null;
                        case e:
                            return e;
                    }
                case _:
                    switch (index.entitiesOfUrl[cleanUrl(Std.string(url))]) {
                        case null:
                            return null;
                        case e:
                            return e;
                    }
            }
        });
    }

    static function onMessage(?request:Serialized<Message>, sender, sendResponse:Dynamic->Void) {
        final msg = request.unserialize();
        switch (msg) {
            case MsgGetEntityFromUrl(url):
                getEntityFromUrl(url)
                    .then(e -> sendResponse(e))
                    .catchError(err -> sendResponse(false));
                return true;
            case MsgUpdateEntityIndex(showNotification):
                updateEntityIndex(showNotification);
                sendResponse(null);
                return false;
            case MsgPostToServer(path, jsonContent):
                postToServer(path, jsonContent)
                    .then(_ -> sendResponse(null))
                    .catchError(err -> sendResponse(err));
                return true;
            case _:
                throw 'Unknown request: $request';
        }

        return false;
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
        info:global.chrome.contextmenus.OnClickData,
        ?tab:global.chrome.tabs.Tab
    ):Void {
        switch (info.menuItemId) {
            case MenuOpenWebsite:
                Settings.getSettings().then(function(settings) {
                    Tabs.create({
                        url: settings.serverEndpoint,
                    });
                });
            case MenuViewDataInCharleyWong:
                if (info.linkUrl == null) {
                    throw 'No link URL';
                }
                Settings.getSettings().then(settings -> {
                    getEntityFromUrl(info.linkUrl)
                        .then(e -> {
                            if (e == null) {
                                throw 'No entity found for url: ' + info.linkUrl;
                            }
                            Tabs.create({
                                url: Path.join([settings.serverEndpoint, e.id]),
                            });
                        });
                });
            case MenuUpdateEntityIndex:
                updateEntityIndex(true);
            case MenuImportPage | MenuImportLink:
                if (info.linkUrl != null) {
                    Tabs.sendMessage(tab.id, Serializer.run(Message.MsgImportToCharley(info.linkUrl)));
                    return;
                }

                final url = switch (extractFbAboutPage(new URL(tab.url))) {
                    case null:
                        tab.url;
                    case handle:
                        'https://www.facebook.com/$handle/';
                }
                Tabs.sendMessage(tab.id, Serializer.run(Message.MsgImportToCharley(url)));
            case MenuScrollToJune:
                Tabs.sendMessage(tab.id, Serializer.run(Message.MsgScrollToJune));
            case MenuScrollEndless:
                Tabs.sendMessage(tab.id, Serializer.run(Message.MsgScrollEndless));
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

        ContextMenus.create({
            id: MenuViewDataInCharleyWong,
            title: "查看資料",
            contexts: ["link"],
        });

        if (dataEntryMode) {
            ContextMenus.create({
                id: MenuImportPage,
                title: "滙入此網頁",
                contexts: ["page", "page_action"]
            });
            ContextMenus.create({
                id: MenuImportLink,
                title: "滙入此連結",
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
        ContextMenus.create({
            id: MenuScrollEndless,
            title: "無限回溯",
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