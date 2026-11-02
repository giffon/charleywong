# Where the static site links the entity profile pics to. Override with e.g. `just profile_pic_origin=https://... static-site`.
profile_pic_origin := "https://img.charleywong.info"

# List the recipes
default:
    @just --list

# Dump HkbaseDirectory.json from the HKBASE Google Sheet (needs the credentials in .envrc)
hkbase-directory:
    haxe dumpHkbaseDirectory.hxml
    . ./.envrc && OPENSSL_CONF=/dev/null node dumpHkbaseDirectory.js dump

# Build static/css/tailwind.css
tailwind:
    NODE_ENV=production yarn tailwind

# Build static/serviceWorker.bundled.js
service-worker:
    haxe serviceWorker.hxml

# Build static/browser.bundled.js
browser:
    haxe browser.hxml

# Static resources are fingerprinted at compile time, so build them before compiling.
_static-site-js: service-worker browser tailwind
    haxe staticSite.hxml

# Generate data/search/jieba-dict.txt, the words of jieba's dictionary that occur in the entity data
search-dict: _static-site-js
    [ -f HkbaseDirectory.json ] || {{just_executable()}} hkbase-directory
    node staticSite.js dict

# Render the static site into dist/site and the data of the Worker into dist/worker
static-site: _static-site-js
    [ -f HkbaseDirectory.json ] || {{just_executable()}} hkbase-directory
    [ -f data/search/jieba-dict.txt ] || node staticSite.js dict
    node staticSite.js build --profile-pic-origin {{profile_pic_origin}}

# Compile the Worker into worker/charleywong.js
worker:
    haxe worker.hxml

# `wrangler dev` watches each asset with its own file descriptor. With ~20k assets, the fd numbers exceed
# macOS's OPEN_MAX (10240), which makes every spawn fail with EBADF. Polling doesn't hold any fd.
[doc("Preview the static site and the Worker locally")]
preview: static-site worker
    CHOKIDAR_USEPOLLING=1 CHOKIDAR_INTERVAL=5000 wrangler dev

# Render the missing entity profile pics into dist/img, e.g. `just profile-pics --force` or `just profile-pics <id>...`
profile-pics *args:
    haxe profilePic.hxml
    node profilePic.js --from {{profile_pic_origin}} {{args}}
