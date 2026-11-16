# pale_moss_carpet
$execute if block ~ ~ ~ $(Name)[bottom=$(bottom),east=$(east),north=$(north),south=$(south),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[bottom=$(bottom),east=$(east),north=$(north),south=$(south),west=$(west)] strict
return 1
