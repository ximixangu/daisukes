# pointed_dripstone
$execute if block ~ ~ ~ $(Name)[thickness=$(thickness),vertical_direction=$(vertical_direction),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[thickness=$(thickness),vertical_direction=$(vertical_direction),waterlogged=$(waterlogged)] strict
return 1
