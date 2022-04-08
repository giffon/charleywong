package charleywong;

import sys.io.File;
import sys.FileSystem;

class Macros {
    static public function build():Void {
        if (!FileSystem.exists("dclookup.js")) {
            Sys.command("yarn", ["dclookup"]);
        }
    }
}