# acacia_trapdoor, bamboo_trapdoor, birch_trapdoor, cherry_trapdoor, copper_trapdoor, crimson_trapdoor...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),half=$(half),open=$(open),powered=$(powered),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),half=$(half),open=$(open),powered=$(powered),waterlogged=$(waterlogged)] strict
return 1
