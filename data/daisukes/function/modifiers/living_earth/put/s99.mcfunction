# daylight_detector
$execute if block ~ ~ ~ $(Name)[inverted=$(inverted),power=$(power)] run return 0
$setblock ~ ~ ~ $(Name)[inverted=$(inverted),power=$(power)] strict
return 1
