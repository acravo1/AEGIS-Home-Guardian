$RepositoryRoot = Split-Path $PSScriptRoot -Parent

$ToolkitScript = Join-Path `
    (Split-Path $RepositoryRoot -Parent) `
    "Cravo-Toolkit\exporters\repository-export.ps1"

Push-Location $RepositoryRoot

try
{
    & $ToolkitScript
}
finally
{
    Pop-Location
}