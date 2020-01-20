package charleywong.importer;

import selenium.webdriver.*;
import selenium.webdriver.common.alert.Alert;
import selenium.webdriver.common.action_chains.ActionChains;
import selenium.webdriver.support.ui.Select;
import selenium.webdriver.support.ui.WebDriverWait;
import selenium.webdriver.support.expected_conditions.*;
import selenium.webdriver.remote.switch_to.SwitchTo;
import selenium.webdriver.remote.webelement.*;
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

typedef FacebookInfo = {
    page:String,
    name:String,
    about:String,
    addr:{
        line:String,
        area:String,
    },
    email:String,
    tel:String,
    ig:String,
    hours:OpeningSchedule,
    categories:Array<String>,
};

class FacebookImporter {
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

    function fbCategories() {
        var categoryLinks:Array<WebElement> = driver.find_elements_by_xpath("//*[@role='main']//a[contains(@href, '/pages/category/')]");
        var searchLinks:Array<WebElement> = driver.find_elements_by_xpath("//*[@role='main']//a[contains(@href, '/search/pages/')]");
        return categoryLinks.map(e -> e.text).concat(searchLinks.map(e -> e.text));
    }

    function fbContactEmail() {
        var emailLinks:Array<WebElement> = driver.find_elements_by_xpath("//*[@role='main']//a[starts-with(@href, 'mailto:')]");
        return if (emailLinks.length == 0) {
            null;
        } else if (emailLinks.length == 1) {
            var regexp = ~/^mailto:(.+)$/;
            if (regexp.match(emailLinks[0].get_attribute("href")))
                regexp.matched(1);
            else
                throw 'Cannot parse ${emailLinks[0].get_attribute("href")}';
        } else {
            throw 'More than 1 email?';
        }
    }

    function fbAbout() {
        var about:Array<WebElement> = driver.find_elements_by_xpath("//*[@role='main']//div[text()='MORE INFO']/parent::*/parent::*//div[text()='About']/following-sibling::*");
        return switch (about) {
            case []:
                null;
            case [about]:
                about.text;
            case _:
                throw 'More than 1 about elements? $about';
        }
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

    public function fbPageInfo(fbPage:String):FacebookInfo {
        var aboutUrl = 'https://www.facebook.com/pg/${fbPage}/about/';
        driver.get(aboutUrl);

        loginFbIfNeeded();

        return {
            page: fbPage,
            name: fbPageName(),
            about: fbAbout(),
            addr: fbPageAddr(),
            email: fbContactEmail(),
            tel: fbPageTel(),
            ig: fbPageInstagram(),
            hours: fbPageHours(),
            categories: fbCategories(),
        };
    }
}