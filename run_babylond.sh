#!/bin/bash

BABYLOND="/usr/local/bin/babylond"

LOG_FILE="/root/babylond_log.log"

echo "-----------------------------------" >> "$LOG_FILE"
date >> "$LOG_FILE"

$BABYLOND tx epoching delegate bbnvaloper1ak6xmt8dvwxhsqwvz3mduwnplrl75j7dnlr0r5 1000000ubbn --from wallet --chain-id bbn-test-2 --gas-adjustment 1.4 --gas auto --fees 10ubbn -y >> "$LOG_FILE" 2>&1

echo "Script execution completed." >> "$LOG_FILE"
