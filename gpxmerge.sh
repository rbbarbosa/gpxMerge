#!/bin/bash
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 file1.gpx file2.gpx output.gpx" >&2
  exit 1
fi
cat $1 | grep -a -B 1000000 /trkseg | grep -v /trkseg > $3
cat $2 | grep -a -A 1000000 trkseg | grep -v \<trkseg >> $3
