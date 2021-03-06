#!/usr/bin/env bash
#
# From the Realtime Data Science tutorial at PyGotham
# Micha Gorelick, micha@bit.ly, 2012... copyleft
# https://github.com/mynameisfiber/realtimestream/
#

pubsub="$1"

curl -s "http://$1/stats" &> /dev/null
if [[ $? -ne 0 ]]; then
    echo "Could not connect to pubsub at $1";
    exit -1;
fi

i=0
while true; do
    echo "Pushing to pubsub: $i"
    echo "$i" | curl -d@- "http://${pubsub}/pub" &> /dev/null;
    i=$(( $i + 1 ));
done;
