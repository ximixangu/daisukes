# bamboo
$execute if block ~ ~ ~ $(Name)[age=$(age),leaves=$(leaves),stage=$(stage)] run return 0
$setblock ~ ~ ~ $(Name)[age=$(age),leaves=$(leaves),stage=$(stage)] strict
return 1
