# Raig amb la mirada d'ara i, si no ha caigut res, amb la del clic (#tie 1: nomes un dels llocs possibles)
scoreboard players set #step daisukes.heavy 0
execute as @a[tag=daisukes.heavy_who,limit=1] at @s anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/heavy_blocks/ray
execute if score #ok daisukes.heavy matches 1 run return 0
scoreboard players set #step daisukes.heavy 0
execute as @a[tag=daisukes.heavy_who,limit=1] at @e[type=minecraft:marker,tag=daisukes.heavy_cur,limit=1] rotated as @e[type=minecraft:marker,tag=daisukes.heavy_cur,limit=1] anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/heavy_blocks/ray
