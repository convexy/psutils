$config_file = ".\config.xml"

$caller = Split-Path $MyInvocation.ScriptName -Leaf
$config = ([xml](Get-Content $config_file))

$value = Get-Random -Maximum 10 -Minimum 1 -Count 2

foreach ($value in $values) {
  Write-Host $value
}

function OutputLog([String]$text) {
  $dt = Get-Date -Format "yyyy/MM/dd HH:mm:ss.fff"
  Add-Content -Path $config.Log.filepath -Value "$dt|$caller|$text" -Encoding UTF8
}

