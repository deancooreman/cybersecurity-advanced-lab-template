$vbox = "$env:ProgramFiles\Oracle\VirtualBox\VBoxManage.exe"

$vms = @(
    "isprouter",
    "companyrouter",
    "homerouter",
    "dns",
    "web",
    "database",
    "employee",
    "remote-employee"
)

foreach ($vm in $vms) {
    Write-Host "Starting $vm..." -ForegroundColor Cyan
    & $vbox startvm $vm --type headless
}