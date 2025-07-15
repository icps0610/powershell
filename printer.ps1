$ip = "192.168.0.201"
$printName = "印表機名稱"

# 使用的 port
Add-PrinterPort -Name $ip -PrinterHostAddress $ip
# 新增
Add-Printer -Name "$printName" -PortName "$ip" -DriverName "Microsoft Print to PDF"