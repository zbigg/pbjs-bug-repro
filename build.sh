#!/usr/bin/env bash

PATH=$PATH:`pwd`/node_modules/.bin

pbjs -t static-module -w commonjs --no-encode --no-verify --no-create foo.proto -o foo.js
pbjs -t static-module -w commonjs --no-encode --no-verify --no-create bar.proto -o bar.js

pbts foo.js -o foo.d.ts
pbts bar.js -o bar.d.ts

ts-node test.ts
