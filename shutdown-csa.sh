#!/usr/bin/env bash

vms=(
    "remote-employee"
    "employee"
    "database"
    "web"
    "dns"
    "homerouter"
    "companyrouter"
    "isprouter"
)

for vm in "${vms[@]}"; do
    echo -e "\e[33mShutting down $vm...\e[0m"
    VBoxManage controlvm "$vm" acpipowerbutton
done
