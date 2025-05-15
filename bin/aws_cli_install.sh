#!/usr/bin/env bash

cd /workspace
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
cd $THEIA_WORKSPACE_ROOT
# msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi
#msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi /qn