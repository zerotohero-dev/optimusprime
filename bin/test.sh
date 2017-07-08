#!/usr/bin/env bash

#                          /[-])//  ___
#                     __ --\ `_/~--|  / \
#                   /_-/~~--~~ /~~~\\_\ /\
#                   |  |___|===|_-- | \ \ \
# _/~~~~~~~~|~~\,   ---|---\___/----|  \/\-\
# ~\________|__/   / // \__ |  ||  / | |   | |
#          ,~-|~~~~~\--, | \|--|/~|||  |   | |
#          [3-|____---~~ _--'==;/ _,   |   |_|
#                      /   |\__|_|  \  \__/--/
#
# This project is a part of the “Byte-Sized JavaScript” videocasts.
#
# You can watch “Byte-Sized JavaScript” at: https://bytesized.tv/
#
# MIT Licensed — See LICENSE.md
#
# Send your comments, suggestions, and feedback to me@volkan.io
#

npm run lint

if [ $? != 0 ]; then
    echo "Lints failed. — Exiting."

    exit 1
fi

NODE_ENV=test echo "These are not the tests you’re looking for…"  

if [ $? != 0 ]; then
    echo "Tests failed. — Exiting."

    exit 1
fi

echo "Everything is awesome!"
