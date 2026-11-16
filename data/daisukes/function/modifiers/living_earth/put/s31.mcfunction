# creeper_head, dragon_head, piglin_head, player_head, skeleton_skull, wither_skeleton_skull...
$execute if block ~ ~ ~ $(Name)[powered=$(powered),rotation=$(rotation)] run return 0
$setblock ~ ~ ~ $(Name)[powered=$(powered),rotation=$(rotation)] strict
return 1
