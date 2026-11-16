# note_block
$execute if block ~ ~ ~ $(Name)[instrument=$(instrument),note=$(note),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[instrument=$(instrument),note=$(note),powered=$(powered)] strict
return 1
