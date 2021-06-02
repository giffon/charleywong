package charleywong;

import sys.io.File;
import sys.FileSystem;

class Macros {
    static public function build():Void {
        if (!FileSystem.exists("dclookup.js")) {
            Sys.command("yarn", ["dclookup"]);
        }
        if (!FileSystem.exists("static/css/tailwind.css")) {
            File.copy("node_modules/tailwindcss/dist/tailwind.min.css", "static/css/tailwind.css");
        }
    }
}