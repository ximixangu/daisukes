# carrots, melon_stem, potatoes, pumpkin_stem, wheat
$execute if block ~ ~ ~ $(Name)[age=$(age)] run return 0
$setblock ~ ~ ~ $(Name)[age=$(age)] strict
return 1
