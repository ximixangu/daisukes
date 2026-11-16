# acacia_door, bamboo_door, birch_door, cherry_door, copper_door, crimson_door...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),half=$(half),hinge=$(hinge),open=$(open),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),half=$(half),hinge=$(hinge),open=$(open),powered=$(powered)] strict
return 1
