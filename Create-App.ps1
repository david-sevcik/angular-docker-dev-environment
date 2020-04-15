param([Parameter(Mandatory)]$app_name, $app_dir = "")

if($app_dir -eq "")
{
    $app_dir = Get-Location
}

$Env:APP_NAME = $app_name
$Env:APP_DIR = $app_dir

docker-compose -f $PSScriptRoot\docker-compose.yml run seed