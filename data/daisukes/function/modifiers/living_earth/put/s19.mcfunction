# acacia_shelf, bamboo_shelf, birch_shelf, cherry_shelf, crimson_shelf, dark_oak_shelf...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged)] strict
return 1
