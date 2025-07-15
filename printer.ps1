$ip = "192.168.0.201"
$printName = "印表機名稱"

# 如果 Port 不存在才新增
if (-not (Get-PrinterPort -Name $ip -ErrorAction SilentlyContinue)) {
    Add-PrinterPort -Name $ip -PrinterHostAddress $ip
}
# 新增
Add-Printer -Name "$printName" -PortName "$ip" -DriverName "Microsoft Print to PDF"

Write-Host "印表機新增完成"