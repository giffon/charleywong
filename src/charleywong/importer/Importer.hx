package charleywong.importer;

import haxe.Json;
import sys.io.File;
import haxe.ds.ReadOnlyArray;
import selenium.webdriver.*;
import selenium.webdriver.common.alert.Alert;
import selenium.webdriver.common.action_chains.ActionChains;
import selenium.webdriver.support.ui.Select;
import selenium.webdriver.support.ui.WebDriverWait;
import selenium.webdriver.support.expected_conditions.*;
import selenium.webdriver.remote.switch_to.SwitchTo;
import selenium.webdriver.remote.webelement.*;
import haxe.macro.Expr;
using StringTools;
using Lambda;

enum OpeningHours {
    HOpen;
    HClose;
    HRanges(ranges:Array<{open:String, close:String}>);
}

enum OpeningSchedule {
    AlwaysOpen;
    OpeningDays(mon:OpeningHours, tue:OpeningHours, wed:OpeningHours, thur:OpeningHours, fri:OpeningHours, sat:OpeningHours, sun:OpeningHours);
}

class Importer {
    final driver:Remote;
    final hubHost:String;
    final hubUrl:String;
    final fbEmail:Null<String>;
    final fbPass:Null<String>;

    public function new():Void {
        hubHost = arg("HUB_HOST", "localhost");
        hubUrl = 'http://${hubHost}:4444/wd/hub';
        fbEmail = arg("FB_EMAIL", null);
        fbPass = arg("FB_PASS", null);


        var opts = new ChromeOptions();
        opts.add_argument("--disable-dev-shm-usage");
        opts.set_capability("acceptSslCerts", true);
        driver = new Remote(hubUrl, opts.to_capabilities());
    }

    public function destroy():Void {
        driver.quit();
    }

    function arg(name:String, defaultValue:String) {
        return switch (Sys.getEnv(name)) {
            case null: defaultValue;
            case v: v;
        }
    }

    function fbPageName():String {
        var titleValue:String = driver.title;
        var regex = ~/^(.+?)(?: - .+?)?(:? \| Facebook)?$/;
        if (regex.match(titleValue)) {
            return regex.matched(1);
        } else {
            throw 'Cannot get page title from "$titleValue" (${driver.current_url}).';
        }
    }

    function fbPageTel():Null<String> {
        var callNode:WebElement = try{
            driver.find_element_by_xpath("//*[starts-with(text(),'Call ')]");
        } catch (e:Dynamic) {
            return null;
        }
        var callString:String = callNode.text;
        var regex = ~/Call ([0-9 ]+)/;
        return if (regex.match(callString)) {
            ~/[^0-9]/g.replace(regex.matched(1), "");
        } else {
            null;
        }
    }

    function fbPageAddr() {
        var textNodes:Array<WebElement> = try {
            driver.find_elements_by_xpath("//a[contains(@href,'share.here.com')]/parent::*/parent::*//*[text()]");
        } catch (e:Dynamic) {
            return null;
        }

        if (textNodes.length < 3) {
            return null;
        }

        return {
            line: (textNodes[0].text:String),
            area: (textNodes[1].text:String),
        };
    }

    function fbPageInstagram() {
        var linkNode:WebElement = try {
            driver.find_element_by_xpath("//a[starts-with(@href,'https://instagram.com/')]");
        } catch (e:Dynamic) {
            null;
        }
        if (linkNode != null) {
            var href:String = linkNode.get_attribute("href");
            var regex = ~/https:\/\/instagram.com\/(.+)/;
            if (regex.match(href)) {
                return regex.matched(1);
            }
        }

        // Somehow FB uses a tracking link before the link is hovered by a cursor...
        // https://l.facebook.com/l.php?u=https%3A%2F%2Finstagram.com%2Fgiffonio&h=AT34SwZ-XRno-h7GrzFe7uHQSzEZLwgpfsxlPhSJGcaj9m-enkRXHDjj6WS89wJ9effhvJXF4dTSnkmzECinQDVdjkCW1chH4fLNcrruY0jnd1s1XpaoQpyJtSRnzCRPxSKvyyE3D2dQmew9hB5a8g
        var linkNode:WebElement = try {
            driver.find_element_by_xpath("//a[starts-with(@href,'https://l.facebook.com/l.php?u=https%3A%2F%2Finstagram.com%2F')]");
        } catch (e:Dynamic) {
            null;
        }
        if (linkNode != null) {
            var href:String = linkNode.get_attribute("href");
            var regex = ~/https:\/\/l.facebook.com\/l.php\?u=https%3A%2F%2Finstagram.com%2F(.+?)(?:%2F)?&.*/;
            if (regex.match(href)) {
                return regex.matched(1);
            }
        }

        var textNode:WebElement = try {
            driver.find_element_by_xpath("//*[contains(text(),'Instagram')]");
        } catch (e:Dynamic) {
            null;
        }
        if (textNode != null) {
            var text:String = textNode.text;
            var regex = ~/Instagram ?:? ?(.+)/;
            if (regex.match(text)) {
                return regex.matched(1);
            }
        }

        return null;
    }

    function hoursOfDay(day:String) {
        var node:WebElement = driver.find_element_by_xpath('//div[contains(text(),"${day}:")]/following-sibling::div');
        var hoursStr:String = node.text;
        var regexp = ~/([0-9]+:[0-9]+(?: AM| PM)?) - ([0-9]+:[0-9]+(?: AM| PM)?)/;
        if (regexp.match(hoursStr)) {
            return HRanges([{ open: regexp.matched(1), close: regexp.matched(2) }]);
        }
        switch (hoursStr) {
            case "CLOSED": return HClose;
            case _: throw 'Unknown hours: $hoursStr';
        }
    }

    function fbPageHours() {
        var uiPopover:WebElement = try {
            driver.find_element_by_xpath("//div[contains(text(),'HOURS')]/parent::*/following-sibling::div//div[contains(@class,'uiPopover')]/div");
        } catch (e:Dynamic) {
            null;
        }
        if (uiPopover != null) {
            driver.execute_script("arguments[0].click();", [uiPopover]);
            return OpeningDays(
                hoursOfDay("Monday"),
                hoursOfDay("Tuesday"),
                hoursOfDay("Wednesday"),
                hoursOfDay("Thursday"),
                hoursOfDay("Friday"),
                hoursOfDay("Saturday"),
                hoursOfDay("Sunday")
            );
        }

        var hoursNode = try {
            driver.find_element_by_xpath("//div[contains(text(),'HOURS')]/parent::*/following-sibling::div//*[text()]");
        } catch (e:Dynamic) {
            null;
        }
        if (hoursNode != null) {
            switch (hoursNode.text:String) {
                case "Always open": return AlwaysOpen;
                case _: //pass
            }
        }
        return null;
    }

    public function loginFbIfNeeded() {
        var requireLogin = try {
            new WebDriverWait(driver, 5).until(_ ->
                (driver.title:String).contains(" - About") ||
                (driver.title:String).contains(" | Facebook") ||
                ~/.+ - .+ photos - .+/.match(driver.title)
            );
            false;
        } catch (e:Dynamic) {
            try {
                driver.find_element_by_xpath("//*[contains(text(),'You must log in to continue.')]");
                true;
            } catch (e:Dynamic) {
                throw driver.title;
            }
        }

        if (requireLogin) {
            Sys.println("Facebook login required.");
            if (fbEmail == null) throw 'Missing FB_EMAIL.';
            if (fbPass == null) throw 'Missing FB_PASS.';
            var emailInput:WebElement = driver.find_element_by_id("email");
            var passInput:WebElement = driver.find_element_by_id("pass");
            var loginBtn:WebElement = driver.find_element_by_id("loginbutton");
            emailInput.send_keys([fbEmail]);
            passInput.send_keys([fbPass]);
            loginBtn.click();
            new WebDriverWait(driver, 20).until(_ -> driver.title != "Facebook" && !(driver.title:String).contains("Log in to Facebook"));
        }
    }

    // Get Facebook page name from a permalink.
    public function fbPage(url:String):String {
        driver.get(url);
        var hiddenInput:WebElement = driver.find_element_by_xpath("//div[starts-with(text(),'See more of')]/following-sibling::*//input[starts-with(@value,'https://www.facebook.com/')]");
        var value:String = hiddenInput.get_attribute("value");
        var regexp = ~/^https:\/\/www\.facebook\.com\/(.+)\/$/;
        if (regexp.match(value))
            return regexp.matched(1);
        else
            throw value;
    }

    public function fbPageInfo(fbPage:String) {
        var aboutUrl = 'https://www.facebook.com/pg/${fbPage}/about/';
        driver.get(aboutUrl);

        loginFbIfNeeded();

        return {
            name: fbPageName(),
            addr: fbPageAddr(),
            tel: fbPageTel(),
            ig: fbPageInstagram(),
            hours: fbPageHours(),
        };
    }

    static function importFbPermalink(url:String) {
        var importer = new Importer();
        var fbPage = importer.fbPage(url);
        importer.destroy();
        importFbPage(fbPage, url);
    }

    static function importFbPage(fbPage:String, postUrl:String) {
        var cls = switch (EntityIndex.entitiesOfFbPage[fbPage]) {
            case null:
                var importer = new Importer();
                var info = importer.fbPageInfo(fbPage);
                importer.destroy();
                Sys.println(Json.stringify(info, null, "  "));
                createEntity(info.name, fbPage, postUrl);
            case entity:
                updateEntity(entity, postUrl);
        }
        var fileContent = new haxe.macro.Printer("    ").printTypeDefinition(cls);
        var formatterProcess = new sys.io.Process("haxelib", ["run", "formatter", "--stdin", "-s", "src"]);
        formatterProcess.stdin.writeString(fileContent);
        formatterProcess.stdin.close();
        fileContent = formatterProcess.stdout.readAll().toString();
        formatterProcess.close();
        Sys.println("");
        Sys.print(fileContent);
        if (Sys.getEnv("CI") != null || Sys.getEnv("GITHUB_ACTIONS") != null) {
            Sys.println("In CI, skip writing file.");
        } else {
            var file = "src/charleywong/entities/" + cls.name + ".hx";
            var rewrite = sys.FileSystem.exists(file);
            File.saveContent(file, fileContent);
            Sys.println((rewrite ? "Rewritten " : "Created ") + file);
        }
    }

    static function main() {
        var args = Sys.args();
        var url = args[0].trim();

        if (!url.startsWith("https://www.facebook.com/")) {
            throw '$url doesn\'t look like a Facebook URL.';
        }

        // https://www.facebook.com/permalink.php?story_fbid=1384711015018289&id=897763637046365&__xts__%5B0%5D=68.ARDoat1gIoDWNhWOYOl4y2ph9GCqrYoWLE4bfOiLDxX9nOIYWW4IpujBgs52jBUlU_uzyAXHdsYldWW0tJvlRn-2_LXjLeAhbBIPxQLD1OXEoFFu1cmGbGm2XcVKvSI5yxeyLT-36li2qYQEPITHxhEMvwQAXYtySy_ErDCAPRi32K6H8iRp7pfc_pxc2S9AOb9IhlWwizb3o7_IunO6z-q22DorIPRXBBt2-R3Cpg4cz_yfM3-4uaGu2lPozkQXzcEwkCr84sUkl8gEVFaOYS8P51Xqo0jsH4gOHxwJP5c7hkyqxNvUmQhCjzFoticWkZ_p5laKOD5p0kh1bH3JgyMS7A&__tn__=-R
        var permalinkRegexp = ~/^https:\/\/www\.facebook\.com\/permalink\.php.+$/;
        if (permalinkRegexp.match(url)) {
            var url = switch (url.indexOf("&__xts__")) {
                case -1:
                    url;
                case qIndex:
                    url.substring(0, qIndex);
            };
            importFbPermalink(url);
            return;
        }

        var postRegexp = ~/^https:\/\/www\.facebook\.com\/(.+?)\/(?:posts|photos|videos)\/.+$/;
        if (postRegexp.match(url)) {
            var fbPage = postRegexp.matched(1);
            var url = switch (url.indexOf("?")) {
                case -1:
                    url;
                case qIndex:
                    url.substring(0, qIndex);
            };
            importFbPage(fbPage, url);
            return;
        }

        throw 'Cannot handle $url';
    }

    static function uppercaseFirstChar(str:String):String {
        return str.charAt(0).toUpperCase() + str.substr(1);
    }

    static function removeNonEngChar(str:String):String {
        return ~/[^A-Za-z0-9]/g.replace(str, "");
    }

    static function toTitleCase(str) {
        return uppercaseFirstChar(removeNonEngChar(str));
    }

    static function getClassName(name:String, fbPage:String):String {
        if (~/^[^\u4e00-\u9fff]+$/.match(name)) {
            return toTitleCase(name);
        }

        if (~/^[^\u4e00-\u9fff]+$/.match(fbPage)) {
            return toTitleCase(fbPage);
        }

        return toTitleCase(name);

        throw 'Cannot get a class name from $name ($fbPage).';
    }

    static function updateEntity(entity:Entity, post:String) {
        var fullName = Type.getClassName(Type.getClass(entity)).split(".");
        var className = fullName[fullName.length - 1];
        var nameExprs = [
            for (lang => name in entity.name)
            {
                var nameExpr = {
                    expr: EConst(CString(name)),
                    pos: null,
                };
                macro $i{lang.getName()} => ${nameExpr};
            }
        ];
        var webpagesExprs = [
            for (p in entity.webpages)
            {
                var urlExpr = {
                    expr: EConst(CString(p.url)),
                    pos: null,
                };
                macro { url: $urlExpr };
            }
        ];
        var postsExprs = [
            for (p in entity.posts.concat([{ url: post }]))
            {
                var urlExpr = {
                    expr: EConst(CString(p.url)),
                    pos: null,
                };
                macro { url: $urlExpr };
            }
        ];
        var cls = macro class $className implements Entity {
            public final name = $a{nameExprs};
            public final webpages = $a{webpagesExprs};
            public final posts = $a{postsExprs};
        };
        cls.pack = fullName.slice(0, fullName.length - 1);
        return cls;
    }

    static function createEntity(name:String, fbPage:String, post:String) {
        var className = getClassName(name, fbPage);
        var nameExpr = {
            var noChi = ~/^[^\u4e00-\u9fff]+$/; // no chinese characters
            var allChi = ~/^[\u4e00-\u9fff \-_\.·]+$/; // all chinese characters
            var chi_en = ~/^([\u4e00-\u9fff ]*[\u4e00-\u9fff])[^A-Za-z0-9\u4e00-\u9fff]*(.+)$/; // chinese then eng
            var en_chi = ~/^([^\u4e00-\u9fff]+?)[ \-]*([\u4e00-\u9fff]+)$/; // chinese then eng
            if (noChi.match(name))
                macro [
                    en => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ]
            else if (allChi.match(name))
                macro [
                    zh => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ]
            else if (chi_en.match(name))
                macro [
                    zh => ${{
                        expr: EConst(CString(chi_en.matched(1))),
                        pos: null,
                    }},
                    en => ${{
                        expr: EConst(CString(chi_en.matched(2))),
                        pos: null,
                    }},
                ]
            else if (en_chi.match(name))
                macro [
                    en => ${{
                        expr: EConst(CString(en_chi.matched(1))),
                        pos: null,
                    }},
                    zh => ${{
                        expr: EConst(CString(en_chi.matched(2))),
                        pos: null,
                    }},
                ]
            else
                macro [
                    zh => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ];
        };
        var urlExpr = {
            expr: EConst(CString('https://www.facebook.com/$fbPage/')),
            pos: null,
        };
        var postExpr = {
            expr: EConst(CString(post)),
            pos: null,
        };
        var cls = macro class $className implements Entity {
            public final name = ${nameExpr};
            public final webpages = [{
                url: ${urlExpr}
            }];
            public final posts = [{
                url: ${postExpr}
            }];
        };
        cls.pack = ["charleywong", "entities"];
        return cls;
    }
}