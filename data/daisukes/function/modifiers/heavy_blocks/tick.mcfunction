# Cada jugador nou, un numero (i des d'ara pot activar l'avancament de "bloc posat sense res a sota")
execute as @a unless score @s daisukes.heavy matches 1.. run function daisukes:modifiers/heavy_blocks/join
# Blocs posats el tick d'abans: ara es busquen
execute as @e[type=minecraft:marker,tag=daisukes.heavy_look] at @s run function daisukes:modifiers/heavy_blocks/look
# Els qui n'han posat, a punt per al seguent
advancement revoke @a[tag=daisukes.heavy_once] only daisukes:modifiers/heavy_blocks/where
tag @a[tag=daisukes.heavy_once] remove daisukes.heavy_many
tag @a[tag=daisukes.heavy_once] remove daisukes.heavy_once
