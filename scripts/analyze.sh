#!/bin/bash
LOG_FILE=/app/access.log
REPORT_FILE=/app/report.txt


NUM_LINES=10
> $LOG_FILE
for i in $(seq 1 $NUM_LINES); do
    IP="192.168.$((RANDOM%255)).$((RANDOM%255))"
    STATUS=(200 200 200 404 500)
    ENDPOINTS=("/index.html" "/login" "/dashboard" "/about" "/contact")
    echo "$IP - - [18/Sep/2025:12:00:00 +0000] \"GET ${ENDPOINTS[$RANDOM % ${#ENDPOINTS[@]}]} HTTP/1.1\" ${STATUS[$RANDOM % ${#STATUS[@]}]} 123" >> $LOG_FILE
done

echo "=== Log Analysis Report ===" > $REPORT_FILE


echo -e "\nTop 5 IP addresses:" >> $REPORT_FILE
awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -nr | head -5 >> $REPORT_FILE

echo -e "\nHTTP Status Codes:" >> $REPORT_FILE
awk '{print $9}' $LOG_FILE | sort | uniq -c | sort -nr >> $REPORT_FILE

echo -e "\nTop Endpoints:" >> $REPORT_FILE
awk '{print $7}' $LOG_FILE | sort | uniq -c | sort -nr | head -5 >> $REPORT_FILE

echo "Report generated: $REPORT_FILE"
