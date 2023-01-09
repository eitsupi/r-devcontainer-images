#!/usr/bin/env bash

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

# Run the test
devcontainer-info
R -q -e "rmarkdown::render('hello.Rmd', output_file = 'hello.md')"
cat hello.md
