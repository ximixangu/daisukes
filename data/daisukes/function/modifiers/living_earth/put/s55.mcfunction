# pitcher_crop
$execute if block ~ ~ ~ $(Name)[age=$(age),half=$(half)] run return 0
$setblock ~ ~ ~ $(Name)[age=$(age),half=$(half)] strict
return 1
