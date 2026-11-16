# redstone_wire
$execute if block ~ ~ ~ $(Name)[east=$(east),north=$(north),power=$(power),south=$(south),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[east=$(east),north=$(north),power=$(power),south=$(south),west=$(west)] strict
return 1
