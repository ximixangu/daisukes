# nether_portal
$execute if block ~ ~ ~ $(Name)[axis=$(axis)] run return 0
$setblock ~ ~ ~ $(Name)[axis=$(axis)] strict
return 1
