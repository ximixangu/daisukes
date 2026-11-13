# S'esquerda la pedra i el jugador es pot tornar a moure
scoreboard players set @s daisukes.petrified 0
attribute @s minecraft:movement_speed modifier remove daisukes:petrified
attribute @s minecraft:jump_strength modifier remove daisukes:petrified
attribute @s minecraft:block_break_speed modifier remove daisukes:petrified
attribute @s minecraft:attack_damage modifier remove daisukes:petrified

execute at @s run playsound minecraft:block.stone.break player @a[distance=..24] ~ ~ ~ 1.2 0.8
execute at @s run particle minecraft:block{block_state:"minecraft:stone"} ~ ~1 ~ 0.3 0.6 0.3 0 30 force
title @s clear
