# copper_lantern, exposed_copper_lantern, lantern, oxidized_copper_lantern, soul_lantern, waxed_copper_lantern...
$execute if block ~ ~ ~ $(Name)[hanging=$(hanging),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[hanging=$(hanging),waterlogged=$(waterlogged)] strict
return 1
