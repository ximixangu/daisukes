# chest, copper_chest, exposed_copper_chest, oxidized_copper_chest, trapped_chest, waxed_copper_chest...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),type=$(type),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),type=$(type),waterlogged=$(waterlogged)] strict
return 1
