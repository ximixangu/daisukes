# bell
$execute if block ~ ~ ~ $(Name)[attachment=$(attachment),facing=$(facing),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[attachment=$(attachment),facing=$(facing),powered=$(powered)] strict
return 1
