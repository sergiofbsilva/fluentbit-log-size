#!/bin/sh

generate_random_string() {
    tr -dc 'A-Za-z0-9' </dev/urandom | head -c "$1"
}

while true; do
  str_size=$((RANDOM % (120 - 20 + 1) + 20))
  message=$(generate_random_string $str_size)
  echo "{\"message\": \"$message\", \"number\":$str_size,  \"timestamp\": \"'$(date +%s)'\"}"  >> /var/log/dummy.log
  sleep 1
done
