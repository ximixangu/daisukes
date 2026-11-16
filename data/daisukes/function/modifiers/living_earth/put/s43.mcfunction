# cactus, sugar_cane
$execute if block ~ ~ ~ $(Name)[age=$(age)] run return 0
$setblock ~ ~ ~ $(Name)[age=$(age)] strict
return 1
