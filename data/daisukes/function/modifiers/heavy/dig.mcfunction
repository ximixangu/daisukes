# Un bloc protegit atura l'enfonsament: el fons es just a sobre seu
execute if block ~ ~ ~ #daisukes:heavy_unbreakable positioned ~ ~1 ~ run return run function daisukes:modifiers/heavy/bottom

function daisukes:modifiers/heavy/break
scoreboard players remove #d daisukes.weight 100
execute if score #d daisukes.weight matches 100.. positioned ~ ~-1 ~ run return run function daisukes:modifiers/heavy/dig

# Ultim bloc: el fons, on acabaras
function daisukes:modifiers/heavy/bottom
