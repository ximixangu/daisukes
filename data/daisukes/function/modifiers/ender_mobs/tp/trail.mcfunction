# Purpurina pel cami, de l'arribada cap a on es el mob (com la de l'enderman): un punt cada bloc, 24 com a molt
particle minecraft:portal ~ ~1 ~ 0.1 0.3 0.1 0.15 3
scoreboard players add #steps daisukes.em 1
execute if score #steps daisukes.em matches ..23 positioned ^ ^ ^1 unless entity @s[distance=..1] run function daisukes:modifiers/ender_mobs/tp/trail
