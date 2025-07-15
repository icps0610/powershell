for ($i = 1; $i -le 254; $i++) {
    $ip = "192.168.0.$i"
    $result = ping.exe -n 1 -w 100 $ip
    if ($LASTEXITCODE -eq 0) {
        Write-Host "$i O"
    } else {
        Write-Host "$i X"
    }
}
