# creeper_wall_head, dragon_wall_head, piglin_wall_head, player_wall_head, skeleton_wall_skull, wither_skeleton_wall_skull...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),powered=$(powered)] strict
return 1
