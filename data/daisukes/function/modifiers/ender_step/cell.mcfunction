# Una columna mes enlla, a l'altura dels peus. #steps = columnes que queden fins al desti
scoreboard players remove #steps daisukes.ender_step 1
execute if score #steps daisukes.ender_step matches 0 run return run function daisukes:modifiers/ender_step/step

# La del mig (corrent) se salta per sobre: ni tanques ni murs (1,5 d'alt), i amb lloc a l'altura del cap
execute if block ~ ~ ~ #minecraft:fences run return 0
execute if block ~ ~ ~ #minecraft:walls run return 0
execute if block ~ ~ ~ #minecraft:fence_gates[open=false] run return 0
execute positioned ~ ~1 ~ unless predicate daisukes:ender_step/open run return 0
function daisukes:modifiers/ender_step/path with storage daisukes:ender_step dir
