# powder_snow_cauldron, water_cauldron
$execute if block ~ ~ ~ $(Name)[level=$(level)] run return 0
$setblock ~ ~ ~ $(Name)[level=$(level)] strict
return 1
