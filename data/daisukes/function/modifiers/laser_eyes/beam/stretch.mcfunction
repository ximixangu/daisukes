# Com a jugador: els seus lasers passen a fer #blen vuitens de bloc (en 3 ticks, suau)
scoreboard players operation @s daisukes.le_len = #blen daisukes.le
execute store result storage daisukes:laser_eyes m.len float 0.125 run scoreboard players get #blen daisukes.le
execute anchored eyes positioned ^ ^ ^-4.5 as @e[type=minecraft:block_display,tag=daisukes.le_beam,distance=..1] if score @s daisukes.le_id = #me daisukes.le run function daisukes:modifiers/laser_eyes/beam/len with storage daisukes:laser_eyes m
