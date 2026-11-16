# suspicious_gravel, suspicious_sand
$execute if block ~ ~ ~ $(Name)[dusted=$(dusted)] run return 0
$setblock ~ ~ ~ $(Name)[dusted=$(dusted)] strict
return 1
