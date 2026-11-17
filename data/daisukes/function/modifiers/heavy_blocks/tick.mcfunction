# Cada jugador nou, un numero (i des d'ara pot activar l'avancament de "bloc posat sense res a sota")
execute as @a unless score @s daisukes.heavy matches 1.. run function daisukes:modifiers/heavy_blocks/join
# Blocs posats que encara no s'han buscat (l'avancament used no ha saltat): ara. Si en queda algun marcador, el jugador ja
# no hi es
execute as @a[tag=daisukes.heavy_placing] run function daisukes:modifiers/heavy_blocks/finish
kill @e[type=minecraft:marker,tag=daisukes.heavy_look]
