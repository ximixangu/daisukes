# sniffer_egg
$execute if block ~ ~ ~ $(Name)[hatch=$(hatch)] run return 0
$setblock ~ ~ ~ $(Name)[hatch=$(hatch)] strict
return 1
