# acacia_slab, andesite_slab, bamboo_mosaic_slab, bamboo_slab, birch_slab, blackstone_slab...
$execute if block ~ ~ ~ $(Name)[type=$(type),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[type=$(type),waterlogged=$(waterlogged)] strict
return 1
