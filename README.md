# Charley Wong 和你查

A Yellow Economic Circle business/brand database released with [open source / open data licenses](LICENSE).

## Technical overview

Data is stored as JSON files in the [data](data) directory.

```jsonc
{
  // an unique string with A-Z, a-z, 0-9, dot (.), hyhen (-), underscore (_)
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
  ]
}
```
