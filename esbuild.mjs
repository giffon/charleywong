import esbuild from 'esbuild';
import esbuildPluginResolve from 'esbuild-plugin-resolve';
import { NodeGlobalsPolyfillPlugin } from '@esbuild-plugins/node-globals-polyfill';
import { NodeModulesPolyfillPlugin } from '@esbuild-plugins/node-modules-polyfill';

const [node, script, input, output, format, target] = process.argv;

esbuild.build({
    entryPoints: [input],
    plugins: [
        NodeGlobalsPolyfillPlugin(),
        NodeModulesPolyfillPlugin(),
        esbuildPluginResolve({
            "perf_hooks": "perf-hooks-browserify"
        }),
    ],
    minify: true,
    treeShaking: true,
    bundle: true,
    format: format || "iife",
    target: target || "es2016",
    outfile: output,
}).catch(() => process.exit(1))
