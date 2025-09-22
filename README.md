Log Analyzer

A lightweight **Bash + Docker** project that analyzes web server access logs and generates insightful reports (Top IPs, Endpoints, and Status Codes).  
Built for practicing **Unix/Linux scripting, containerization, and automation with Makefiles**.

---

Features

- Parse and analyze **Apache/Nginx-style access logs**
- Extract:
  - 🔹 Top 5 client IPs
  - 🔹 HTTP status code distribution
  - 🔹 Most requested endpoints
- Automated workflow using **Makefile** (`make run`, `make clean`)
- Containerized with **Docker** for portability and reproducibility
- Generates a **report.txt** with structured results

---

Tech Stack

- **Bash** (core analysis logic)  
- **GNU tools**: `awk`, `sort`, `uniq`  
- **Docker** (containerized execution)  
- **Makefile** (build automation)  

---

Getting Started

### 1. Clone the repository
git clone https://github.com/your-username/log-analyzer.git
cd log-analyzer
docker build -t log-analyzer .
make run
cat report.txt

log-analyzer/
├── scripts/
│   └── analyze.sh      # Bash script for log analysis
├── Dockerfile          # Containerization setup
├── Makefile            # Automation commands
├── access.log          # Sample log file
└── report.txt          # Generated analysis output


<img width="895" height="99" alt="image" src="https://github.com/user-attachments/assets/bff270ef-595b-4a24-9a1a-d11287d05a47" />
<img width="913" height="473" alt="image" src="https://github.com/user-attachments/assets/81a86d9a-d822-458f-ac93-d922c8423a62" />
<img width="1342" height="590" alt="image" src="https://github.com/user-attachments/assets/d7f3c6e6-e864-4e2f-a8c1-b571ff8d9e8b" />
<img width="792" height="321" alt="image" src="https://github.com/user-attachments/assets/12c6f0ac-ba9d-48ea-815a-a0ab31b8bbb0" />
