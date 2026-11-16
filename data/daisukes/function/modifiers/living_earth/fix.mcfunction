# Com a un negre (no una ombra), al seu centre: si el bloc ha canviat (ha crescut, l'han tallat, pelat, llaurat...),
# torna a ser exactament el que era. Torna 1 si l'ha arreglat. (Si hi ha un bloc posat que encara no ha tornat, no)
execute if entity @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.5] run return 0
execute if entity @s[tag=daisukes.earth_sub] run return run function daisukes:modifiers/living_earth/fix_sub
execute unless score @s daisukes.earth_v matches 0.. run return 0
return run function daisukes:modifiers/living_earth/put/find
