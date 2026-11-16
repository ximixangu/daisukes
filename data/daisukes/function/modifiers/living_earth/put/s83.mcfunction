# observer
$execute if block ~ ~ ~ $(Name)[facing=$(facing),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),powered=$(powered)] strict
return 1
