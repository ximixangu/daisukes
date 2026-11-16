# acacia_leaves, azalea_leaves, birch_leaves, cherry_leaves, dark_oak_leaves, flowering_azalea_leaves...
$execute if block ~ ~ ~ $(Name)[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)] strict
return 1
