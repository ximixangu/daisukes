# comparator
$execute if block ~ ~ ~ $(Name)[facing=$(facing),mode=$(mode),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),mode=$(mode),powered=$(powered)] strict
return 1
