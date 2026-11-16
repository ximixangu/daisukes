# acacia_stairs, andesite_stairs, bamboo_mosaic_stairs, bamboo_stairs, birch_stairs, blackstone_stairs...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),half=$(half),shape=$(shape),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),half=$(half),shape=$(shape),waterlogged=$(waterlogged)] strict
return 1
