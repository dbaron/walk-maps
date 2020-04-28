#!/bin/bash

cd "$(dirname "$0")" || exit 1

rm -rf gpx-files
mkdir gpx-files
cd gpx-files

ls ../../../../images/digital-camera/*Palo-Alto*/*Walk*.gpx | grep -v Baylands | while read GPXFILE
do
    DATE=$(echo "$GPXFILE" | cut -d/ -f7 | cut -b1-10)
    ln -s "$GPXFILE" "$DATE.gpx"
    echo "$DATE.gpx" >> list.txt
done
