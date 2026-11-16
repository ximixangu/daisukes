# sculk_sensor
$execute if block ~ ~ ~ $(Name)[power=$(power),sculk_sensor_phase=$(sculk_sensor_phase),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[power=$(power),sculk_sensor_phase=$(sculk_sensor_phase),waterlogged=$(waterlogged)] strict
return 1
