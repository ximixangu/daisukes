# acacia_log, acacia_wood, bamboo_block, basalt, birch_log, birch_wood...
$execute if block ~ ~ ~ $(Name)[axis=$(axis)] run return 0
$setblock ~ ~ ~ $(Name)[axis=$(axis)] strict
return 1
