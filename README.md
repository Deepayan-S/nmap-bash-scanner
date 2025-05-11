# Automated Network Reconnaissance with Nmap and Bash

This repository includes a Bash script (`scan.sh`) that automates common network reconnaissance tasks using Nmap:contentReference[oaicite:14]{index=14}:contentReference[oaicite:15]{index=15}. Running the script prompts for a target IP or domain and performs multiple Nmap scans (ping/host discovery, full port scan, OS/service detection), then saves the output.

## Prerequisites

- Linux with Bash shell.
- Nmap installed (e.g. via `sudo apt-get install nmap`):contentReference[oaicite:16]{index=16}.

## Setup

1. Clone or download this project.
2. Navigate to the project directory and make the script executable:
   ```bash
   chmod +x scan.sh
   ```
