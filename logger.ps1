$fileContent = Get-Content .\log.txt
$nextCommit = $fileContent + '1'
$date = Get-Date

Out-File -FilePath .\log.txt -Encoding ascii -InputObject $nextCommit

git add .\log.txt
git commit -m $date
