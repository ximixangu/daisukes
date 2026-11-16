# heavy_weighted_pressure_plate, light_weighted_pressure_plate, target
$execute if block ~ ~ ~ $(Name)[power=$(power)] run return 0
$setblock ~ ~ ~ $(Name)[power=$(power)] strict
return 1
