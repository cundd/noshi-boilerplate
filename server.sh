#!/bin/sh

: ${PHP_BINARY="php"}
HOST=$1
PORT=$2

if [[ "$HOST" == "" ]]; then
    HOST=localhost
fi
if [[ "$PORT" == "" ]]; then
    PORT=9000
fi
$PHP_BINARY -S $HOST:$PORT -t .
