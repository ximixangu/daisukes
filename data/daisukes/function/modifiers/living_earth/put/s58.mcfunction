# fire
$execute if block ~ ~ ~ $(Name)[age=$(age),east=$(east),north=$(north),south=$(south),up=$(up),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[age=$(age),east=$(east),north=$(north),south=$(south),up=$(up),west=$(west)] strict
return 1
