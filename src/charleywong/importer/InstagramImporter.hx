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

typedef InstagramInfo = {
    handle:String,
    name:String,
    about:String,
    website:String,
};

class InstagramImporter {
    final driver:Remote;
    final hubHost:String;
    final hubUrl:String;

    public function new():Void {
        hubHost = arg("HUB_HOST", "localhost");
        hubUrl = 'http://${hubHost}:4444/wd/hub';


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

    // Get Instagram handle from an Instagram post link.
    public function igHandle(url:String):String {
        if (!url.startsWith("https://www.instagram.com/p/")) {
            throw 'Not an Instagram post? $url';
        }

        driver.get(url);

        var h2:WebElement = driver.find_element_by_xpath("//article//header//h2//a");
        var href:String = h2.get_attribute("href");
        var regexp = ~/^https:\/\/www\.instagram\.com\/([^\/]+)\/$/;
        if (regexp.match(href)) {
            return regexp.matched(1);
        } else {
            throw '$href is not an Instagram profile?';
        }
    }

    function igName() {
        var h1s:Array<WebElement> = driver.find_elements_by_xpath("//main//header//h1");
        if (h1s[1] != null)
            return h1s[1].text;
        else
            return h1s[0].text;
    }

    function igWebsite() {
        var as:Array<WebElement> = driver.find_elements_by_xpath("//main//header//a[contains(@rel,'me')]");
        switch (as) {
            case []:
                return null;
            case [a]:
                var href:String = a.get_attribute("href");
                var regexp = ~/^https:\/\/l\.instagram\.com\/\?u=([^&]+).*$/;
                if (regexp.match(href)) {
                    return regexp.matched(1).urlDecode();
                } else {
                    throw 'Cannot parse $href';
                }
            case _:
                throw 'There are more then 1 matched links.';
        }
    }

    function igAbout() {
        var aboutElement:WebElement = driver.find_elements_by_xpath("//main//header/section/div[2]/span")[0];
        return aboutElement.text;
    }

    public function igInfo(igHandle:String):InstagramInfo {
        driver.get('https://www.instagram.com/${igHandle}/');
        return {
            handle: igHandle,
            name: igName(),
            website: igWebsite(),
            about: igAbout(),
        };
    }
}