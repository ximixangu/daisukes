# Hi han posat alguna cosa, hi ha caigut sorra...: ja no es un forat i no torna (en silenci)
execute unless block ~ ~ ~ #daisukes:living_earth/clear run return run function daisukes:modifiers/living_earth/remove
# (un pisto hi esta movent alguna cosa: espera un tick)
execute if block ~ ~ ~ minecraft:moving_piston run return run scoreboard players set @s daisukes.earth_t 1
scoreboard players remove #holes daisukes.earth 1
# Torna el mateix bloc, exacte, encara que hi hagi algu a dins (l'ofega). Les ombres (torxes, escales, rails, fanals...)
# no: nomes la capa negra, que no fa llum ni es pot fer servir. Els blocs de llum, amb un bloc a sota que no en fa.
# (Sense saber les propietats, no: d'una partida d'abans)
execute unless entity @s[tag=daisukes.earth_ghost] unless score @s daisukes.earth_v matches 0.. run return run function daisukes:modifiers/living_earth/remove
execute if entity @s[tag=daisukes.earth_sub] run function daisukes:modifiers/living_earth/put_sub
execute unless entity @s[tag=daisukes.earth_ghost] unless entity @s[tag=daisukes.earth_sub] run function daisukes:modifiers/living_earth/put/find
tag @s remove daisukes.earth_wait
tag @s add daisukes.earth_set
data merge entity @s {transformation: {scale: [1.002f, 1.002f, 1.002f]}}
playsound minecraft:block.sculk.place block @a[distance=..16] ~ ~ ~ 0.5 0.6
