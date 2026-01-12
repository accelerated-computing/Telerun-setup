#!/bin/bash
set -e

if [[ $EUID -ne 0 ]]; then
   sudo -E $0
else
   telerun_url="https://raw.githubusercontent.com/SophiaSun18/student_software/refs/heads/main/telerun/submit.py"
   echo "Installing telerun"
   mkdir -p /opt/ac/telerun
   curl -O --output-dir /opt/ac/telerun $telerun_url
   chmod +x /opt/ac/telerun/submit.py
   ln -sf /opt/ac/telerun/submit.py /usr/local/telerun
   echo "Telerun successfully installed!"
fi