# Com al jugador, als seus peus: la corda ja es plena. Campaneta (re, i despres fa#, la, re) i temps lliure (#free)
scoreboard players set @s daisukes.cw_s 24000
scoreboard players operation @s daisukes.cw_h = #free daisukes.cw
scoreboard players set @s daisukes.cw_o 0
tag @s add daisukes.cw_ding
playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 0.8 1.2
playsound minecraft:block.note_block.bell player @a ~ ~ ~ 0.8 0.793701
particle minecraft:end_rod ~ ~1 ~ 0.5 0.6 0.5 0.06 16 normal @a
particle minecraft:wax_on ~ ~1 ~ 0.6 0.7 0.6 0 20 normal @a
