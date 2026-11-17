# Com al jugador amb la corda plena, als seus peus: temps lliure. La resta de la campaneta, i en acabar, un tic
scoreboard players remove @s daisukes.cw_h 1
execute if entity @s[tag=daisukes.cw_ding] if score @s daisukes.cw_h = #f3 daisukes.cw run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 0.8 1.0
execute if entity @s[tag=daisukes.cw_ding] if score @s daisukes.cw_h = #f6 daisukes.cw run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 0.8 1.189207
execute if entity @s[tag=daisukes.cw_ding] if score @s daisukes.cw_h = #f9 daisukes.cw run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 0.8 1.587401
execute if score @s daisukes.cw_h <= #f9 daisukes.cw run tag @s remove daisukes.cw_ding
execute if score @s daisukes.cw_h matches 0 run playsound minecraft:block.comparator.click player @a ~ ~ ~ 0.5 0.8
