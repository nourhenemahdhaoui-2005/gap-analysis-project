#!/bin/bash
echo "=== Basic Gap Analysis Checks ==="
 
echo
echo "0) System Version Information:"
echo "Kernel Version:"
uname -r
 
echo
echo "OS Release:"
cat /etc/os-release 2>/dev/null || echo "OS release file not found"
 
echo
echo "1) Password policy (pwquality):"
grep -E 'minlen|dcredit|ucredit|lcredit|ocredit' /etc/security/pwquality.conf 2>/dev/null || echo "No pwquality entries"
 
echo
echo "2) Firewall (ufw) status:"
if command -v ufw >/dev/null 2>&1; then
    sudo ufw status verbose
else
    echo "UFW is not installed."
    echo "To install it, run: sudo apt install ufw -y"
fi
 
echo
echo "3) SSH root login:"
sudo grep -i '^PermitRootLogin' /etc/ssh/sshd_config || echo "No PermitRootLogin found"
 
echo
echo "4) Enabled services (short list):"
sudo systemctl list-unit-files --type=service --state=enabled | sed -n '1,20p'
 
echo
echo "5) World-writable files (limited search):"
echo "(Searching in /etc /var /home /tmp only)"
sudo find /etc /var /home /tmp -type f -perm -0002 -print 2>/dev/null | sed -n '1,20p'
 
echo
echo "6) Last package update time:"
stat -c '%y' /var/lib/apt/periodic/update-success-stamp 2>/dev/null || echo "No update stamp found"
 
echo
echo "=== End of checks ==="
