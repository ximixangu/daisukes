# brown_mushroom_block, chorus_plant, mushroom_stem, red_mushroom_block
$execute if block ~ ~ ~ $(Name)[down=$(down),east=$(east),north=$(north),south=$(south),up=$(up),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[down=$(down),east=$(east),north=$(north),south=$(south),up=$(up),west=$(west)] strict
return 1
