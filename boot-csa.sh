#!/usr/bin/env bash

vms=(
    "isprouter"
    "companyrouter"
    "homerouter"
    "dns"
    "web"
    "database"
    "employee"
    "remote-employee"
)

for vm in "${vms[@]}"; do
    echo -e "\e[36mStarting $vm...\e[0m"
    VBoxManage startvm "$vm" --type headless
done
