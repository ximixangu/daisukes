# acacia_pressure_plate, bamboo_pressure_plate, birch_pressure_plate, cherry_pressure_plate, crimson_pressure_plate, dark_oak_pressure_plate...
$execute if block ~ ~ ~ $(Name)[powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[powered=$(powered)] strict
return 1
