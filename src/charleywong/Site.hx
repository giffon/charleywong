package charleywong;

/**
    Site-wide settings shared by the dev server, the static site generator and the views.
**/
class Site {
    static public final domain = "https://charleywong.info";

    /**
        Where entity profile pics (`/:entityId/profile.png`) are served from.
        Empty means the same origin (the dev server generates them on the fly).
    **/
    static public var profilePicOrigin = "";

    static public final entityProfilePicWidth = 1200;
    static public final entityProfilePicHeight = 630;

    /**
        Use the Tailwind CDN script instead of the compiled tailwind.css (dev server only).
    **/
    static public var useTailwindCdn = false;

    /**
        Number of entities shown on the footer of every page.
    **/
    static public var countEntities:()->Int = () -> 0;

    static public function profilePicPath(entityId:String):String {
        return '/${entityId}/profile.png';
    }

    static public function profilePicUrl(entityId:String):String {
        return profilePicOrigin + profilePicPath(entityId);
    }

    static public function absoluteProfilePicUrl(entityId:String):String {
        return (profilePicOrigin != "" ? profilePicOrigin : domain) + profilePicPath(entityId);
    }
}
