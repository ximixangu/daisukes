# copper_chain, exposed_copper_chain, iron_chain, oxidized_copper_chain, waxed_copper_chain, waxed_exposed_copper_chain...
$execute if block ~ ~ ~ $(Name)[axis=$(axis),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[axis=$(axis),waterlogged=$(waterlogged)] strict
return 1
