param([Parameter(Mandatory)]$app_name)

$Env:APP_NAME = $app_name

docker-compose -f $PSScriptRoot\docker-compose.seed.yml run seed