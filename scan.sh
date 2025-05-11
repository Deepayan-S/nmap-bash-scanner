#!/bin/bash
# scan.sh - Automated network reconnaissance using Nmap

read -p "Enter target IP or domain: " TARGET

mkdir -p results

TIMESTAMP=$(date +'%Y%m%d-%H%M%S')

SAFE_TARGET=$(echo "$TARGET" | sed 's/[^a-zA-Z0-9._-]/_/g')
OUTPUT_FILE="results/${SAFE_TARGET}_scan_${TIMESTAMP}.txt"

echo "Performing scans on $TARGET..."
echo "Results will be saved to $OUTPUT_FILE"

# 1. Host discovery (ping scan) - no port scan, only checks if host is up:contentReference[oaicite:6]{index=6}
echo -e "\n=== Ping Scan (Host Discovery) ===" | tee -a "$OUTPUT_FILE"
nmap -sn "$TARGET" | tee -a "$OUTPUT_FILE"

# 2. Full TCP port scan (ports 1-65535):contentReference[oaicite:7]{index=7}
echo -e "\n=== Full TCP Port Scan (ports 1-65535) ===" | tee -a "$OUTPUT_FILE"
nmap -p- "$TARGET" | tee -a "$OUTPUT_FILE"

# 3. OS and service/version detection:contentReference[oaicite:8]{index=8}:contentReference[oaicite:9]{index=9}
echo -e "\n=== OS and Service Version Detection ===" | tee -a "$OUTPUT_FILE"
nmap -O -sV "$TARGET" | tee -a "$OUTPUT_FILE"

echo -e "\nScan complete. See results in: $OUTPUT_FILE"
