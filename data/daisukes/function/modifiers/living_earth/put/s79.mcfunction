# hopper
$execute if block ~ ~ ~ $(Name)[enabled=$(enabled),facing=$(facing)] run return 0
$setblock ~ ~ ~ $(Name)[enabled=$(enabled),facing=$(facing)] strict
return 1
