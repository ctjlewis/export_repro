#!/bin/bash

echo -e '\n---- Compiling testA alone: ----\n'
google-closure-compiler \
  -O ADVANCED \
  --formatting PRETTY_PRINT \
  --process_common_js_modules \
  --generate_exports \
  --js node_modules/google-closure-library/closure/goog/base.js \
  --js tests/testA.js

echo -e '\n---- Compiling tests/**.js: ----\n'
google-closure-compiler \
  -O ADVANCED \
  --formatting PRETTY_PRINT \
  --process_common_js_modules \
  --generate_exports \
  --js node_modules/google-closure-library/closure/goog/base.js \
  --js tests/**.js

echo -e '\n ---- Compiling sanity check: ----\n'
google-closure-compiler \
  -O ADVANCED \
  --formatting PRETTY_PRINT \
  --process_common_js_modules \
  --generate_exports \
  --js node_modules/google-closure-library/closure/goog/base.js \
  --js sanity.js