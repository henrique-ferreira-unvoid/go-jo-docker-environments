#!/bin/bash

# Start Rsyslog in background
rsyslogd

# Wait for it to fully initialize
sleep 2

# Test TCP connection (this fails if imtcp is not enabled in config)
echo "Testing TCP logger"
logger -n localhost -P 516 -T "Syslog is receiving messages via TCP"

# Show logs
tail -f /var/log/syslog
