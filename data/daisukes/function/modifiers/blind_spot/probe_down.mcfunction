# Baixa d'un en un (16 blocs com a molt) fins a un lloc buit amb terra ferma a sota: ni aigua, ni lava, ni fulles
execute if block ~ ~ ~ #daisukes:blind_spot/cell unless block ~ ~-1 ~ #minecraft:replaceable unless block ~ ~-1 ~ #minecraft:leaves run return 1
scoreboard players add #step daisukes.bspot 1
execute if score #step daisukes.bspot matches 17.. run return fail
tp @s ~ ~-1 ~
execute at @s run return run function daisukes:modifiers/blind_spot/probe_down
