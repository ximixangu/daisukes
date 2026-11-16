# leaf_litter
$execute if block ~ ~ ~ $(Name)[facing=$(facing),segment_amount=$(segment_amount)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),segment_amount=$(segment_amount)] strict
return 1
