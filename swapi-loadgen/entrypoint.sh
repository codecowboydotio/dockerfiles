#!/usr/bin/bash

set -x
mkdir /tmp/tor
mkdir /tmp/log
touch /tmp/log/tor.log
touch /tmp/log/privoxy.log

echo "$TARGET_URL"
echo "$TARGET_URL" > /tmp/foo
/usr/bin/tor --quiet -f /etc/tor/torrc

while true
do
  for ((count=1; count <=50; count++))
  do
    curl -s --socks5-hostname http://localhost:9150 $TARGET_URL/people/$count
    curl -s --socks5-hostname http://localhost:9150 $TARGET_URL/planets/$count
  done 
  for ((count=1; count <=6; count++))
  do
    curl -s --socks5-hostname http://localhost:9150 $TARGET_URL/films/$count
  done
  for ((count=1; count <=37; count++))
  do
    curl -s --socks5-hostname http://localhost:9150 $TARGET_URL/species/$count
  done
SLEEPTIME=$(shuf -i 1-10 -n 1)
echo "Sleeping for $SLEEPTIME"
sleep ${SLEEPTIME}m
done
