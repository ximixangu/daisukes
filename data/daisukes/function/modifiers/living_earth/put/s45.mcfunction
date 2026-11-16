# piston, sticky_piston
$execute if block ~ ~ ~ $(Name)[extended=$(extended),facing=$(facing)] run return 0
$setblock ~ ~ ~ $(Name)[extended=$(extended),facing=$(facing)] strict
return 1
