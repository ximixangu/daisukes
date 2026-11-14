# Raig des dels ulls, de 0,1 en 0,1 blocs (fins a 6), a traves d'aire, aigua o herba. Para al primer bloc solid:
# si es el que s'ha posat, cau; si no, no toca res mes (mai un altre bloc de mes enlla)
scoreboard players add #step daisukes.heavy 1
execute if score #step daisukes.heavy matches 61.. run return 0
execute unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~ ~0.5 run return run function daisukes:modifiers/heavy_blocks/found
execute positioned ^ ^ ^0.1 run function daisukes:modifiers/heavy_blocks/ray
