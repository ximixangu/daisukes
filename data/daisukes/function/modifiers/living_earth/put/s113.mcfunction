# tnt
$execute if block ~ ~ ~ $(Name)[unstable=$(unstable)] run return 0
$setblock ~ ~ ~ $(Name)[unstable=$(unstable)] strict
return 1
