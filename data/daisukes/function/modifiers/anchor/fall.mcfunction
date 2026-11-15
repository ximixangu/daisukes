# Si l'encadenat ja no hi es (desconnectat, mort, creatiu o espectador), no passa res
execute unless entity @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] run return run function daisukes:modifiers/anchor/abort
scoreboard players add #t daisukes.anchor 1
# Avis: l'ancora baixa a poc a poc, la seva ombra creix a terra i un cercle de flames d'anima es tanca cap al centre
execute if score #t daisukes.anchor matches ..14 as @e[type=minecraft:block_display,tag=daisukes.anchor_part] at @s run tp @s ~ ~-0.08 ~
execute if score #t daisukes.anchor matches ..14 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run function daisukes:modifiers/anchor/warn
# Despres cau en 6 ticks, cada cop mes de pressa, deixant un rastre de llum
execute if score #t daisukes.anchor matches 15 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run playsound minecraft:item.trident.riptide_1 block @a ~ ~ ~ 1 0.6
execute if score #t daisukes.anchor matches 15 as @e[type=minecraft:block_display,tag=daisukes.anchor_part] at @s run tp @s ~ ~-0.36 ~
execute if score #t daisukes.anchor matches 16 as @e[type=minecraft:block_display,tag=daisukes.anchor_part] at @s run tp @s ~ ~-1.07 ~
execute if score #t daisukes.anchor matches 17 as @e[type=minecraft:block_display,tag=daisukes.anchor_part] at @s run tp @s ~ ~-1.79 ~
execute if score #t daisukes.anchor matches 18 as @e[type=minecraft:block_display,tag=daisukes.anchor_part] at @s run tp @s ~ ~-2.5 ~
execute if score #t daisukes.anchor matches 19 as @e[type=minecraft:block_display,tag=daisukes.anchor_part] at @s run tp @s ~ ~-3.22 ~
execute if score #t daisukes.anchor matches 15 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:end_rod ~ ~15.88 ~ 0.06 0.7 0.06 0.005 4 force @a[distance=..48]
execute if score #t daisukes.anchor matches 16 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:end_rod ~ ~15.52 ~ 0.06 0.7 0.06 0.005 4 force @a[distance=..48]
execute if score #t daisukes.anchor matches 17 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:end_rod ~ ~14.45 ~ 0.06 0.7 0.06 0.005 4 force @a[distance=..48]
execute if score #t daisukes.anchor matches 18 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:end_rod ~ ~12.66 ~ 0.06 0.7 0.06 0.005 4 force @a[distance=..48]
execute if score #t daisukes.anchor matches 19 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:end_rod ~ ~10.16 ~ 0.06 0.7 0.06 0.005 4 force @a[distance=..48]
execute if score #t daisukes.anchor matches 20.. run function daisukes:modifiers/anchor/impact
