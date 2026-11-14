# Puja mentre hi hagi aire a sobre (16 blocs com a molt)
execute if score #h daisukes.bspot matches 16.. run return 0
execute unless block ~ ~1 ~ #minecraft:air run return 0
scoreboard players add #h daisukes.bspot 1
tp @s ~ ~1 ~
execute at @s run function daisukes:modifiers/blind_spot/probe_up
