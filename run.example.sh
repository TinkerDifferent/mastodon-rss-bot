#!/bin/bash
set -e
set -x

rm -f feed
wget https://example.org/feed

python3 mastodon-rss-bot.py \
  ./feed \
  'some.social' \
  username \
  'someone@gmail.com' \
  'foo64==' \
  'hardcoded' \
  5
