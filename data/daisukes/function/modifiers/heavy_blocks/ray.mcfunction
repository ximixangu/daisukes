# Raig des dels ulls, de 0,1 en 0,1 blocs (fins a 6): para al primer bloc que sigui el que s'ha posat
scoreboard players add #step daisukes.heavy 1
execute if score #step daisukes.heavy matches 61.. run return 0
execute unless block ~ ~ ~ #minecraft:air align xyz positioned ~0.5 ~ ~0.5 if function daisukes:modifiers/heavy_blocks/found run return 1
execute positioned ^ ^ ^0.1 run function daisukes:modifiers/heavy_blocks/ray
