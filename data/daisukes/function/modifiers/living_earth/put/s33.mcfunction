# beetroots, frosted_ice, nether_wart, sweet_berry_bush
$execute if block ~ ~ ~ $(Name)[age=$(age)] run return 0
$setblock ~ ~ ~ $(Name)[age=$(age)] strict
return 1
