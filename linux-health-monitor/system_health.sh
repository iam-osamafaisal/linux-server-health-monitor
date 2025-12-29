#!/bin/bash

echo "===== System Health Report =====" >> health_report.log
date >> health_report.log

echo "Uptime:" >> health_report.log
uptime >> health_report.log

echo "CPU Usage:" >> health_report.log
top -bn1 | grep "Cpu(s)" >> health_report.log

echo "Memory Usage:" >> health_report.log
free -h >> health_report.log

echo "Disk Usage:" >> health_report.log
df -h >> health_report.log

echo "===============================" >> health_report.log
