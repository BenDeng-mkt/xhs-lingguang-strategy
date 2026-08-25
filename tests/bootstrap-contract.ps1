$root = Split-Path -Parent $PSScriptRoot
$skill = Join-Path $root 'SKILL.md'
$bootstrap = Join-Path $root 'references\bootstrap.md'
$session = Join-Path $root 'assets\project-session.md'
$readiness = Join-Path $root 'assets\readiness-check.md'

$required = @($skill, $bootstrap, $session, $readiness)
foreach ($path in $required) {
  if (-not (Test-Path -LiteralPath $path)) { throw "Missing required bootstrap artifact: $path" }
}

$text = Get-Content -LiteralPath $bootstrap -Raw -Encoding UTF8
foreach ($state in @('ready', 'login-required', 'browser-unavailable', 'project-input-required')) {
  if ($text -notmatch [regex]::Escape($state)) { throw "Missing bootstrap state: $state" }
}

$entry = Get-Content -LiteralPath $skill -Raw -Encoding UTF8
if ($entry -notmatch 'bootstrap') { throw 'SKILL.md does not route through bootstrap' }
Write-Output 'Bootstrap contract passed.'
