#!/bin/sh
# Cloudflare Workers build: install Hugo and build the site into ./public
set -e
HUGO_VERSION=0.170.1

git submodule update --init --recursive

curl -sSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" \
  | tar -xz -C /tmp hugo
/tmp/hugo version
/tmp/hugo --gc --minify
