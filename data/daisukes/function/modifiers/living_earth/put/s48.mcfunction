# bee_nest, beehive
$execute if block ~ ~ ~ $(Name)[facing=$(facing),honey_level=$(honey_level)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),honey_level=$(honey_level)] strict
return 1
