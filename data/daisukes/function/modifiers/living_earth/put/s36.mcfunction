# blast_furnace, furnace, redstone_wall_torch, smoker
$execute if block ~ ~ ~ $(Name)[facing=$(facing),lit=$(lit)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),lit=$(lit)] strict
return 1
