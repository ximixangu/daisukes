# Com al jugador: darrere seu surt el seu creaking (si no hi ha on, es torna a provar en 1 s). Des d'ara, fins al final
function daisukes:modifiers/heartbound/haunt
execute if score #ok daisukes.heart matches 0 run return run scoreboard players set @s daisukes.heart_t 20
tag @s add daisukes.heart_bound
