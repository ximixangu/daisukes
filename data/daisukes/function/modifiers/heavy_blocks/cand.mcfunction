# Un dels llocs possibles (a sota, al mig del bloc): hi ha d'haver el bloc que tenia a la ma (dreta o esquerra), sense res
# a sota i que no sigui dels que pengen
execute if entity @e[type=minecraft:marker,tag=daisukes.heavy_cand,distance=..0.1] run return 0
execute unless block ~ ~-1 ~ #minecraft:replaceable run return 0
execute if function daisukes:modifiers/heavy_blocks/exempt run return 0
execute store result score #is daisukes.heavy run function daisukes:modifiers/heavy_blocks/is with storage daisukes:heavy main
execute if score #is daisukes.heavy matches 0 store result score #is daisukes.heavy run function daisukes:modifiers/heavy_blocks/is with storage daisukes:heavy off
execute if score #is daisukes.heavy matches 0 run return 0
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.heavy_cand"]}
scoreboard players add #n daisukes.heavy 1
