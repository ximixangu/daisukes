# Tots els jugadors (tambe els que entren ara) poden activar l'avancament de "bloc posat sense res a sota"
scoreboard players set @a daisukes.heavy 1
# Blocs posats el tick d'abans: ara es busquen
execute as @e[type=minecraft:marker,tag=daisukes.heavy_look] at @s run function daisukes:modifiers/heavy_blocks/look
