$files = Get-ChildItem articles/*.md
foreach($f in $files) {
    $len = (Get-Content $f.FullName -Raw).Length
    Write-Output ($f.Name + ': ' + $len + ' символов')
}