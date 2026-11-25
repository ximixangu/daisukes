# Com a jugador sense els seus dos lasers (acaba d'arribar, ha reaparegut, s'ha teletransportat lluny...): els vells
# fora i dos de nous, ja girats com ell (si no, davant dels altres girarien des de 0 en apareixer)
execute as @e[type=minecraft:block_display,tag=daisukes.le_beam] if score @s daisukes.le_id = #me daisukes.le run kill @s
data modify storage daisukes:laser_eyes m.rot set from entity @s Rotation
execute anchored eyes positioned ^ ^ ^-4.5 run function daisukes:modifiers/laser_eyes/beam/summon with storage daisukes:laser_eyes m
scoreboard players reset @s daisukes.le_len
