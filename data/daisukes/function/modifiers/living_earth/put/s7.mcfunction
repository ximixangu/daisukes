# andesite_wall, blackstone_wall, brick_wall, cobbled_deepslate_wall, cobblestone_wall, deepslate_brick_wall...
$execute if block ~ ~ ~ $(Name)[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)] strict
return 1
