#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

echo "Build script initialized."

# Jekyll build.
bundle exec jekyll build

# Make a pdf.
pandoc -o assets/data/resume.pdf --pdf-engine=wkhtmltopdf _site/index.html

# Word processor format
pandoc -o assets/data/resume.docx _site/index.html
