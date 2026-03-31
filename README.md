# Open Source Software Audit: VLC Media Player

## Student Information
* **Name:** Gaikwad Shiv Vijaykumar
* **Roll Number / Registration Number:** 24BCE11207
* **Course:** Open Source Software (OSS)

## Chosen Software
**VLC Media Player** - A free and open-source, portable, cross-platform media player software and streaming media server developed by the VideoLAN project.


## Repository Contents
This repository contains five shell scripts developed as part of the FOSS ecosystem audit, demonstrating practical Linux command-line skills, automation, and system analysis.

### Script Descriptions
1. **`script1.sh` (System Identity Report):** Introduces the Linux system. It fetches and displays the OS distribution, kernel version, current user, system uptime, date, and outputs a statement regarding the open-source license powering the OS.
2. **`script2.sh` (FOSS Package Inspector):** An advanced package inspector that checks if VLC is installed. It dynamically checks across multiple package managers (`dpkg` for APT, `snap`, and `flatpak`) to accurately reflect modern Linux sandboxed environments, and outputs a philosophical summary of the tool.
3. **`script3.sh` (Disk and Permission Auditor):** Loops through essential system directories (`/etc`, `/var/log`, etc.) to report their disk usage and file permissions. It also specifically searches across multiple possible paths to locate and audit VLC's local configuration directory.
4. **`script4.sh` (Log File Analyzer):** Reads a specified log file line-by-line to search for a specific keyword (default: "error"). To accommodate desktop applications like VLC that don't natively write to system logs, this script includes a feature to generate and analyze a mock VLC debug log by passing `demo` as the file path.
5. **`script5.sh` (Open Source Manifesto Generator):** An interactive script that prompts the user with three questions about their relationship with FOSS. It uses string concatenation to generate a personalized, timestamped open-source philosophy paragraph and saves it to a `.txt` file.
---
These scripts were developed and tested on **Ubuntu Linux version 25**.

## Dependencies & Prerequisites
To run these scripts successfully, you need:
* A Linux-based operating system (Ubuntu/Debian recommended).
* The `bash` shell.
* Standard GNU core utilities (`uname`, `whoami`, `uptime`, `ls`, `du`, `awk`, `grep`, `tail`).
* Package managers: `dpkg` is required. `snap` and `flatpak` are optional but supported by Script 2 and 3 for deeper analysis.


## How to Run the Scripts (Step-by-Step Instructions)

**Step 1: Open the Terminal**
Open your Linux terminal.

**Step 2: Clone the Repository & Navigate to the Directory**
Download this repository to your local machine and navigate into the folder:
```bash
git clone https://github.com/technosavvyshiv-ai/oss-audit-24BCE11207.git
cd oss-audit-24BCE11207
