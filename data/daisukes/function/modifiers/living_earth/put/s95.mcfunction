# brewing_stand
$execute if block ~ ~ ~ $(Name)[has_bottle_0=$(has_bottle_0),has_bottle_1=$(has_bottle_1),has_bottle_2=$(has_bottle_2)] run return 0
$setblock ~ ~ ~ $(Name)[has_bottle_0=$(has_bottle_0),has_bottle_1=$(has_bottle_1),has_bottle_2=$(has_bottle_2)] strict
return 1
