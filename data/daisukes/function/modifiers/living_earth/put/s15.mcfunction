# acacia_button, bamboo_button, birch_button, cherry_button, crimson_button, dark_oak_button...
$execute if block ~ ~ ~ $(Name)[face=$(face),facing=$(facing),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[face=$(face),facing=$(facing),powered=$(powered)] strict
return 1
