package charleywong;

import haxe.Json;
import sys.io.File;
import js.html.URL;
import haxe.io.Path;
import js.npm.fetch.Fetch;
import js.lib.Promise;
import charleywong.ServerMain.*;
import charleywong.UrlExtractors.*;
using Lambda;

enum abstract PoliticalCamp(String) to String {
    var PRO_ESTAB;
    var PAN_DEMO;
    var MODERATE;
}

typedef Person = {
    id: String,
    nameCh: String,
    nameEn: String,
    politicalAffiliation:String,
    politicalCamp:PoliticalCamp,
    constituencyType:String,
    constituency:String,
    receivedVotes: Int,
    byElection: Bool,
    current: Bool,
    image: String,
}

typedef Candidate = {
    id: String,
    facebook: String,
    twitter: String,
    nameCh: String,
    nameEn: String,
    politicalAffiliation: String,
    politicalCamp: PoliticalCamp,
    constituencyType: String,
    constituency: String,
    image: String,
    description: String,
    hidden: Bool,
    status: String,
    teamOf: Null<Dynamic>,
    person: Person,
    topLevel: Bool,
    platform: Array<String>,
}

class HKFactCheck {
    static function getLegco():Promise<Array<Person>> {
        return Fetch.fetch("https://api.hkfactcheck.io/legco/")
            .then(r -> r.json());
    }

    static function getCandidate(id:String):Promise<Null<Candidate>> {
        return Fetch.fetch(Path.join(["https://api.hkfactcheck.io/legco", id, "candidate"]))
            .then(r -> r.text())
            .then(text -> try {
                Json.parse(text);
            } catch (e) {
                null;
            });
    }

    static function entityOfCandidate(c:Candidate):Entity {
        switch (extractFbUrl(new URL(c.facebook))) {
            case null:
                // pass
            case fb:
                switch (entityIndex.entitiesOfFbPage[fb]) {
                    case null:
                        // pass
                    case e:
                        return e;
                }
        }
        return null;
    }

    static function sync():Promise<Dynamic> {
        return getLegco()
            .then(data -> Promise.all([
                for (d in data)
                getCandidate(d.id)
                    .then(c -> if (c == null) null else {
                        id: c.id,
                        name: {
                            ch: c.nameCh,
                            en: c.nameEn,
                        },
                        politicalCamp: c.politicalCamp,
                        facebook: c.facebook,
                        charleywong: switch(entityOfCandidate(c)) {
                            case null: null;
                            case e: e.id;
                        }
                    })
            ]))
            .then(data -> data.filter(d -> d != null))
            .then(data -> File.saveContent("data/hkfactcheck.io/mapping.json", Json.stringify(data, null, "  ")));
    }

    static function main():Void {
        sync();
    }
}