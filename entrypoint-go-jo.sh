#!/bin/bash

# Start logging
echo "$(date): Starting Go-jo service" | tee -a $LOG_FILE

# Start Go-jo service
echo "$(date): Initializing Go-jo..." | tee -a $LOG_FILE
sudo go-jo
