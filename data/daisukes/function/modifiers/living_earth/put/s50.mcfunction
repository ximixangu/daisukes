# lava, water
$execute if block ~ ~ ~ $(Name)[level=$(level)] run return 0
$setblock ~ ~ ~ $(Name)[level=$(level)] strict
return 1
