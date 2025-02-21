#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_DIR="./logs"
mkdir -p "$LOG_DIR"
LOGFILE="./logs/$0-$TIMESTAMP.log"

echo "Hello world"

