execute as @e[type=minecraft:block_display,tag=daisukes.anchor_part] at @s run tp @s ~ ~-0.14 ~
scoreboard players operation #t4 daisukes.anchor = #t daisukes.anchor
scoreboard players operation #t4 daisukes.anchor %= #5 daisukes.anchor
execute if score #t4 daisukes.anchor matches 1 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:dust_plume ~ ~0.1 ~ 0.4 0.05 0.4 0.01 8 force @a[distance=..48]
execute if score #t4 daisukes.anchor matches 1 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:soul_fire_flame ~ ~0.2 ~ 0.3 0.05 0.3 0.02 4 force @a[distance=..48]
execute if score #t4 daisukes.anchor matches 1 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run playsound minecraft:block.gravel.break block @a ~ ~ ~ 0.6 0.6
