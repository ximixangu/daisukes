# vine
$execute if block ~ ~ ~ $(Name)[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west)] strict
return 1
