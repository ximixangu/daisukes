# repeater
$execute if block ~ ~ ~ $(Name)[delay=$(delay),facing=$(facing),locked=$(locked),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[delay=$(delay),facing=$(facing),locked=$(locked),powered=$(powered)] strict
return 1
