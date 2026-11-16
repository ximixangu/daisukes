# grass_block, mycelium, podzol
$execute if block ~ ~ ~ $(Name)[snowy=$(snowy)] run return 0
$setblock ~ ~ ~ $(Name)[snowy=$(snowy)] strict
return 1
