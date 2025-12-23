linux Security Gap Analysis Project
 Project Overview

This project presents a security gap analysis performed on a Linux system (Kali Linux) using an automated auditing script.
The goal is to identify security misconfigurations, understand their risks, apply corrective actions, and validate improvements through a second scan.

This project demonstrates practical skills in:

Linux system hardening

Security auditing

Risk analysis

Documentation and reporting

 Objectives

Identify security weaknesses on a Linux system

Analyze why these issues are dangerous

Apply recommended security fixes

Re-run the audit to verify improvements

Document results in a professional and structured way

 Tools & Environment

Operating System: Kali Linux

Audit Script: gap-analysis-checks.sh

Shell: Bash

Version Control: Git & GitHub

 Methodology
1️⃣ Initial Security Scan (Before Fix)

The audit script was executed to assess the system's security posture:

./gap-analysis-checks.sh | tee gap-results.txt


This scan revealed several security gaps related to:

Password policy configuration

System update status

File permissions

Security services configuration

 Screenshots of the initial scan are available in the screenshots/ directory.

2️⃣ Security Issues Identified

Some of the main issues detected include:

Weak password policy settings

Missing or outdated system updates

Insecure file permissions

Insufficient system hardening parameters

These issues may expose the system to:

Brute-force attacks

Privilege escalation

Unauthorized access

Increased attack surface

3️⃣ Corrective Actions Applied

Based on best practices and AI-assisted recommendations, the following actions were performed:

Strengthened password policy using pwquality.conf

Reviewed system configurations

Improved security-related parameters

Applied configuration changes safely

All actions were documented with screenshots for transparency.

4️⃣ Second Security Scan (After Fix)

After applying corrections, the script was executed again:

./gap-analysis-checks.sh | tee gap-results-after.txt


 A comparison between both scans was performed using:

diff gap-results.txt gap-results-after.txt


The results show clear improvements in system security posture.

 Results Comparison
Aspect	Before Fix	After Fix
Password Policy	Weak	Strong
Security Gaps	Multiple	Reduced
Compliance Level	Low	Improved

Screenshots and result files are included for validation.

 Project Structure
gap-lab/
 gap-analysis-checks.sh
 gap-results.txt
 gap-results-after.txt
 README.md
 screenshots/
 Screenshot_*.png

 Key Learnings

Understanding Linux security baselines is essential

Small misconfigurations can lead to serious vulnerabilities

Automation helps detect gaps quickly

Validation after fixes is critical

 Conclusion

This project highlights the importance of continuous security auditing and system hardening.
By identifying vulnerabilities, applying fixes, and validating improvements, the system’s security posture was significantly enhanced.

 Author

Linux Security Gap Analysis Project
 Built with passion for cybersecurity and system administration
