# acacia_sign, bamboo_sign, birch_sign, cherry_sign, crimson_sign, dark_oak_sign...
$execute if block ~ ~ ~ $(Name)[rotation=$(rotation),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[rotation=$(rotation),waterlogged=$(waterlogged)] strict
return 1
