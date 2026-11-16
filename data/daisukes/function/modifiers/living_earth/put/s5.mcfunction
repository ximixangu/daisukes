# acacia_wall_hanging_sign, acacia_wall_sign, bamboo_wall_hanging_sign, bamboo_wall_sign, big_dripleaf_stem, birch_wall_hanging_sign...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),waterlogged=$(waterlogged)] strict
return 1
