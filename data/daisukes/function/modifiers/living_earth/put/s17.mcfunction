# acacia_hanging_sign, bamboo_hanging_sign, birch_hanging_sign, cherry_hanging_sign, crimson_hanging_sign, dark_oak_hanging_sign...
$execute if block ~ ~ ~ $(Name)[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)] strict
return 1
