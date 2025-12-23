# Gap Analysis Security Report

## Author
Name: MH Nourhen  
Date: 2025  
Platform: Kali Linux  

---

## 1. Introduction
This project presents a basic security gap analysis performed on a Kali Linux system using an automated Bash script.  
The goal is to identify common security misconfigurations, understand their potential risks, and apply remediation steps to improve the overall system security posture.

---

## 2. System Information
- Operating System: Kali GNU/Linux Rolling 2025.3  
- Kernel Version: 6.12.38  
- Analysis Tool: `gap-analysis-checks.sh`  

---

## 3. Methodology
The analysis was conducted in three main phases:
1. Initial system scan (before remediation)
2. Manual remediation of identified security issues
3. Second scan (after remediation) to verify improvements

All scan outputs were saved for comparison and documentation purposes.

---

## 4. Identified Security Gaps (Before Remediation)

### 4.1 Weak Password Policy
- Password complexity rules were not strictly enforced.
- Low password requirements increase the risk of brute-force and dictionary attacks.

### 4.2 Firewall Not Installed
- No active firewall was detected on the system.
- This exposes the system to unauthorized network access.

### 4.3 Enabled Services
- Multiple services were enabled by default.
- Some services may not be strictly necessary and can increase the attack surface.

### 4.4 System Updates
- No recent system update timestamp was detected.
- Outdated systems are vulnerable to known exploits.

---

## 5. Remediation Actions

### 5.1 Password Policy Hardening
The password policy was strengthened by updating the `pwquality.conf` file:
- Minimum password length set to 12
- Enforced use of uppercase, lowercase, digits, and special characters

### 5.2 Firewall Considerations
Although UFW was not available by default on Kali Linux, firewall status was reviewed using `iptables` to understand current network filtering rules.

### 5.3 System Update
The system package list was updated using:
```bash
sudo apt update && sudo apt upgrade -y

6. Second Scan Results (After Remediation)
A second scan was performed after applying the fixes:
./gap-analysis-checks.sh | tee gap-results-after.txt
The results show:
Improved password policy enforcement
Reduced configuration gaps
Clear documentation of remaining limitations specific to Kali Linux

7. Comparison (Before vs After)
A comparison was performed using:
diff gap-results.txt gap-results-after.txt
Key improvements observed:
Stronger password policy values
Cleaner configuration output
Better system hardening baseline

8. Screenshots
All important steps and outputs are documented in the screenshots/ directory:
Initial scan results
Configuration changes
Second scan results
Comparison output

9. Conclusion
This project demonstrates a practical approach to basic system hardening through gap analysis.
By identifying weaknesses, applying targeted fixes, and validating improvements, the system security posture was measurably improved.
This project highlights:
Security awareness
Linux system administration skills
Basic security auditing methodology

10. Disclaimer
This project was conducted in a controlled environment for educational purposes only.




