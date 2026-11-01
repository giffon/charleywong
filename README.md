<p align="center">
<img src="static/images/logo-c-t.png" width="250" alt="Charley Wong 和你查" />
</p>

A Yellow Economic Circle business/brand database released with [open source / open data licenses](LICENSE). Currently only pro-democracy entities are recorded.

[charleywong.info](https://charleywong.info/) is a simple read-only web interface of the database. It also serves as an API endpoint (CORS enabled, no authentication needed). Check the "JSON" links in the entity pages, search result pages, and the [list all](https://charleywong.info/list/all) page.

## Technical overview

Data is stored as JSON files in the [data](data) directory.

```jsonc
{
  // a unique string with A-Z, a-z, 0-9, dot (.), hyhen (-), underscore (_)
  // usually the same as the enitity's social media handle
  "id": "giffon.io",

  // an object with "en"/"zh" keys with the enitity's English/Chinese name, respectively
  "name": {
    "en": "Giffon"
  },
  
  // "official" websites or social media accounts
  "webpages": [
    {
      "url": "https://giffon.io"
    },
    {
      "url": "https://www.facebook.com/giffon.io/",

      // optional "meta", should be collected automatically with our import tool
      // just leave it out during manual edit
      "meta": {
        "about": "A crowd-gifting platform where you can state what you want and let your friends collectively buy it as a gift for you.\n\n任何人都可以上嚟許願, 等朋友夾份買禮物送俾你嘅禮物眾籌平台.",
        "categories": [
          "App Page",
          "Website"
        ],
        "email": "admin@giffon.io",
        "id": "255097848528810"
      },
    }
  ],

  // social media posts or news articles about the entity's political stance
  // e.g. slogans, statements, donation (with proofs or not), protest-releated media, re-posts of articles etc.
  // non-exhaustive, should be under 10 for easier maintenance
  // prefer early and/or popular posts
  "posts": [
    {
      "url": "https://www.facebook.com/giffon.io/photos/a.496357477736178/497258487646077",

      // again, optional "meta" similar to those of "webpages"
      "meta": {
        "utime": "1581328986",
        "sharedWith": "Public"
      }
    },
  ],
  
  // for discoverability
  // see "src/charleywong/Tag.hx" for possible values
  "tags": [
    "shop"
  ],

  // physical locations, optional
  "places": [
    {
      "address": {
        "en": "Hong Kong"
      },

      // https://developers.google.com/maps/documentation/javascript/examples/places-placeid-geocoder
      "googleMapsPlaceId": "ChIJD5gyo-3iAzQRfMnq27qzivA",

      // auto-filled by our import tool
      "coordinates": {
        "lat": 22.28017,
        "lng": 114.23015
      },

      // rough area
      // for HK addresses, one of the 18 districts
      // for others, the country
      "area": {
        "zh": "油尖旺區"
      }
    }
  ]
}
```

The web interface is a [React](https://reactjs.org/) / [Fastify](https://www.fastify.io/) app hosted by [AWS Lambda](https://aws.amazon.com/lambda/) with [Cloudflare](https://www.cloudflare.com/).

All program source code are written in [Haxe](https://haxe.org/). Our dev environment is [Visual Studio Code](https://code.visualstudio.com/) with its [remote containers extension](https://code.visualstudio.com/docs/remote/containers).

Open the checked out the source code (with git submodules) using Code, with dev container. Run `haxe build.hxml` to build the web interface. Use `yarn start` to run locally.

To update chrome extension, run `haxe chrome-extension.hxml`, open Chrome and go to Extension page(chrome://extensions) and reload Charley.

### Static site on Cloudflare (work in progress)

The site can also be generated as a static site served by [Cloudflare Workers static assets](https://developers.cloudflare.com/workers/static-assets/), replacing the Lambda server:

 * `earthly +static-site` (or `just static-site` locally) renders all pages into `dist/site` and the data of the Worker into `dist/worker`.
 * `earthly +worker` (or `just worker` locally) compiles the Worker ([WorkerMain.hx](src/charleywong/WorkerMain.hx)), which handles the requests that don't match a static file: search (`/search/*`), custom lists (`/list/:name/:ids`), the post image proxy, aliases and 404. `wrangler deploy` deploys it with the static files ([wrangler.jsonc](wrangler.jsonc)).
 * `earthly +profile-pics` (or `just profile-pics` locally) renders the entity profile pics into `dist/img`, which are served by a separate assets-only Worker ([img/wrangler.jsonc](img/wrangler.jsonc)) because of the 20,000 files limit of Workers static assets.
 * `just preview` builds the static site and the Worker, and serves them at http://localhost:8787 with `wrangler dev`, using the profile pics of the live site.

Run `just` to list all the recipes ([justfile](justfile)). The local builds need `HkbaseDirectory.json`, which `just hkbase-directory` dumps with the credentials in `.envrc` if it's missing.

Search ([Search.hx](src/charleywong/Search.hx)) replaces groonga and jieba: CJK text is matched by substring, latin words by their stems, and queries are segmented with the words of jieba's dictionary that occur in the data (`data/search/jieba-dict.txt`, generated by `earthly +search-dict` or `just search-dict`).
