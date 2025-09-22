# Log Analyzer Pipeline

## 📌 Project Description
A simple command-line log analyzer pipeline that parses server logs, extracts statistics, and generates a summary report.  
It is containerized with Docker for reproducibility and automated using a Makefile.

## ⚙️ Features
- Top 5 IP addresses
- HTTP status code counts (200, 404, 500 etc.)
- Most requested endpoints
- Generates a report.txt file

## 🛠️ How to Run

### Prerequisites
- Docker installed (`docker --version`)
- Make installed (`make --version`)

### Steps
1. Clone or unzip this project
2. Open a terminal inside the project folder
3. Run the analyzer:
   ```bash
   make run
   ```
4. Check the generated `report.txt` file
5. To clean up:
   ```bash
   make clean
   ```

## 📂 Project Structure
- `logs/access.log` → Sample log file
- `scripts/analyze.sh` → Bash script for log analysis
- `Dockerfile` → Containerization setup
- `Makefile` → Automation commands
- `README.md` → Documentation

