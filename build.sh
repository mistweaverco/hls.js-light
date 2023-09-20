#!/usr/bin/env bash

cd hls.js || exit 1

npm ci && light=1 rollup --config && npm run build:types

cd .. || exit 1

cp hls.js/dist/hls.light.* dist/
cp hls.js/dist/hls.js.d.ts dist/

