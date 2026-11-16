# creaking_heart
$execute if block ~ ~ ~ $(Name)[axis=$(axis),creaking_heart_state=$(creaking_heart_state),natural=$(natural)] run return 0
$setblock ~ ~ ~ $(Name)[axis=$(axis),creaking_heart_state=$(creaking_heart_state),natural=$(natural)] strict
return 1
