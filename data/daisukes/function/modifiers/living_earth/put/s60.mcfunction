# tripwire
$execute if block ~ ~ ~ $(Name)[attached=$(attached),disarmed=$(disarmed),east=$(east),north=$(north),powered=$(powered),south=$(south),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[attached=$(attached),disarmed=$(disarmed),east=$(east),north=$(north),powered=$(powered),south=$(south),west=$(west)] strict
return 1
