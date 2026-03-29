$paths = @(
  'chrome',
  'chrome.exe',
  'C:\Program Files\Google\Chrome\Application\chrome.exe',
  'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe',
  'C:\Program Files\Microsoft\Edge\Application\msedge.exe'
)
$html = (Resolve-Path 'd:\HUH\cv\resume\resume_ru_print.html').ProviderPath
$out = 'd:\HUH\cv\resume\resume_ru.pdf'
$ok = $false
foreach ($p in $paths) {
  try {
    $cmd = Get-Command $p -ErrorAction Stop
    Write-Host "Trying: $($cmd.Path)"
    & "$($cmd.Path)" --headless --disable-gpu --print-to-pdf="$out" "file:///$html"
    if (Test-Path $out) { Write-Host "PDF created by $($cmd.Path)"; $ok = $true; break }
  } catch {
    # ignore
  }
}
if (-not $ok) { Write-Host 'No Chrome/Edge found or printing failed.'; exit 2 }