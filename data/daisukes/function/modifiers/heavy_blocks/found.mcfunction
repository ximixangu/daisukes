# Es el bloc posat si no te res a sota, no es dels que pengen i es del tipus de la ma (dreta o esquerra)
execute unless block ~ ~-1 ~ #minecraft:replaceable run return 0
execute if function daisukes:modifiers/heavy_blocks/exempt run return 0
scoreboard players set #ok daisukes.heavy 0
execute store success score #ok daisukes.heavy run function daisukes:modifiers/heavy_blocks/drop with storage daisukes:heavy main
execute if score #ok daisukes.heavy matches 0 store success score #ok daisukes.heavy run function daisukes:modifiers/heavy_blocks/drop with storage daisukes:heavy off
return run scoreboard players get #ok daisukes.heavy
