# Com al cursor, al centre d'un bloc posat que algu acaba de trencar: fora l'avis, i que cap altre cursor que el mirava
# ho prengui per un bloc trencat
scoreboard players set @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01] daisukes.earth_t 0
execute as @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.5] run function daisukes:modifiers/living_earth/unplace
