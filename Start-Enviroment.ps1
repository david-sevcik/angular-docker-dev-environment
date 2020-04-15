param($app_dir = "")

if($app_dir -eq "")
{
    $app_dir = Get-Location
}

$Env:APP_DIR = $app_dir

docker-compose -f $PSScriptRoot\docker-compose.yml up --build