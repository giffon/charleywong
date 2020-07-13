package charleywong;

#if js
import js.node.ChildProcess;
#else
import sys.io.*;
#end
import haxe.DynamicAccess;
import haxe.Json;

class Git {
    static public function git(args:Array<String>):String {
        #if js
        switch (ChildProcess.spawnSync("git", args, {
            encoding: 'utf8',
        })) {
            case {status: status, error: error} if (status != 0):
                throw error;
            case {stdout: stdout}:
                return stdout;
        }
        #else
        var p = new Process("git", args);
        var out = p.stdout.readAll().toString();
        if (p.exitCode() != 0) {
            var err = p.stderr.readAll().toString();
            p.close();
            throw err;
        } else {
            p.close();
        }
        return out;
        #end
    }

    static public function lastUpdateTimestamp(file:String):Float {
        return Std.parseFloat(git(["log", "-n", "1", "--pretty=format:%ct", "--", file]));
    }

    static public function commit(message:String, author:String, ?gpgSign:String):Void {
        var args = ["commit", "--all", '--author=$author', "-m", message];
        if (gpgSign != null)
            args.push('--gpg-sign=$gpgSign');
        git(args);
    }

    static public function push(repo:String, ref:String):Void {
        git(["push", repo, ref]);
    }
}