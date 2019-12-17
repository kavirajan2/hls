#!/bin/bash
echo "$1";
tmpfile=`mktemp`
openssl rand 16 > $1/enc.key
echo https://demo.vplayed.com/enc.key > $tmpfile
echo $1/enc.key >> $tmpfile
echo `openssl rand -hex 16` >> $tmpfile
mv $tmpfile $1/enc.keyinfo
