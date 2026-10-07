$vbox = "$env:ProgramFiles\Oracle\VirtualBox\VBoxManage.exe"

$vms = @(
    "remote-employee",
    "employee",
    "database",
    "web",
    "dns",
    "homerouter",
    "companyrouter",
    "isprouter"
)

foreach ($vm in $vms) {
    Write-Host "Shutting down $vm..." -ForegroundColor Yellow
    & $vbox controlvm $vm acpipowerbutton
}