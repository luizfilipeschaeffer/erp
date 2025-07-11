param(
  [Parameter(Position=0, Mandatory=$true)]
  [string]$Command,
  [Parameter(Position=1, ValueFromRemainingArguments=$true)]
  [string[]]$Args
)

Set-Location $PSScriptRoot

switch ($Command) {
  'up'    { docker-compose up --build }
  'down'  { docker-compose down }
  'logs'  { docker-compose logs -f }
  'exec'  { docker-compose exec @Args }
  'build' { docker-compose build }
  default {
    Write-Host "Uso: ./manage.ps1 <up|down|logs|exec <serviço> <cmd>|build>"
    exit 1
  }
} 