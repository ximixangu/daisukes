# Recompensa de l'avancament ender_mobs/player_hit: com al jugador que acaba de fer mal a un mob, en el mateix
# instant del cop. Marca el mob tocat (hit/mine) perque salti el tick seguent (hits): ara, enmig del cop, encara li
# han d'arribar l'empenta i l'escombrada. A 64 blocs com a molt (fletxes de lluny)
advancement revoke @s only daisukes:ender_mobs/player_hit
execute unless data storage daisukes:state {active: ["ender_mobs"]} run return 0
tag @s add daisukes.em_me
execute as @e[distance=..64,type=!minecraft:player,type=!#daisukes:non_mob,type=!#daisukes:ender_mobs/never,tag=!daisukes.em_hit] if function daisukes:modifiers/ender_mobs/hit/mine run function daisukes:modifiers/ender_mobs/hit/mark
tag @s remove daisukes.em_me
