# Com al jugador: s'enterra un cor a prop i, darrere seu, surt un creaking (si no hi ha on, es torna a provar en 1 s)
function daisukes:modifiers/heartbound/bury
execute if score #ok daisukes.heart matches 0 run return run scoreboard players set @s daisukes.heart_t 20
tag @s add daisukes.heart_bound
function daisukes:modifiers/heartbound/haunt
