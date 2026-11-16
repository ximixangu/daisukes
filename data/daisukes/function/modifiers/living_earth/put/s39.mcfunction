# glow_lichen, resin_clump, sculk_vein
$execute if block ~ ~ ~ $(Name)[down=$(down),east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[down=$(down),east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)] strict
return 1
