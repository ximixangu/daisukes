# calibrated_sculk_sensor
$execute if block ~ ~ ~ $(Name)[facing=$(facing),power=$(power),sculk_sensor_phase=$(sculk_sensor_phase),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),power=$(power),sculk_sensor_phase=$(sculk_sensor_phase),waterlogged=$(waterlogged)] strict
return 1
