# Regenerates resume_en.pdf, resume_ru.pdf and the root "Dana Stukalova.pdf"
# from the print HTML files using headless Chrome or Edge.
$ErrorActionPreference = 'Stop'
$resumeDir = $PSScriptRoot
$repoRoot = Split-Path $resumeDir -Parent

$candidates = @(
  'chrome',
  'chrome.exe',
  'C:\Program Files\Google\Chrome\Application\chrome.exe',
  'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe',
  'msedge',
  'C:\Program Files\Microsoft\Edge\Application\msedge.exe',
  'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'
)
$browser = $null
foreach ($p in $candidates) {
  $cmd = Get-Command $p -ErrorAction SilentlyContinue
  if ($cmd) { $browser = $cmd.Path; break }
}
if (-not $browser) { Write-Host 'No Chrome/Edge found.'; exit 2 }
Write-Host "Using: $browser"

foreach ($lang in 'en', 'ru') {
  $html = Join-Path $resumeDir "resume_${lang}_print.html"
  $out = Join-Path $resumeDir "resume_$lang.pdf"
  $url = 'file:///' + ($html -replace '\\', '/')
  & $browser --headless --disable-gpu --no-pdf-header-footer "--print-to-pdf=$out" $url | Out-Null
  if (-not (Test-Path $out)) { Write-Host "Failed to create $out"; exit 1 }
  Write-Host "Created $out"
}

Copy-Item (Join-Path $resumeDir 'resume_en.pdf') (Join-Path $repoRoot 'Dana Stukalova.pdf') -Force
Copy-Item (Join-Path $resumeDir 'resume_print.css') (Join-Path $repoRoot 'docs\resume_print.css') -Force
Write-Host 'Updated Dana Stukalova.pdf and docs/resume_print.css'
