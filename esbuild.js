const [node, script, input, output, format, target] = process.argv

require('esbuild').build({
    entryPoints: [input],
    plugins: [
        require("@esbuild-plugins/node-globals-polyfill").NodeGlobalsPolyfillPlugin(),
        require("@esbuild-plugins/node-modules-polyfill").NodeModulesPolyfillPlugin(),
        require("esbuild-plugin-resolve")({
            "perf_hooks": "perf-hooks-browserify"
        })
    ],
    external: ["perf_hooks"],
    minify: true,
    treeShaking: true,
    bundle: true,
    format: format || "iife",
    target: target || "es2016",
    outfile: output,
}).catch(() => process.exit(1))
