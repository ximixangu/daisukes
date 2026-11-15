execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run tp @s ~ ~3.2 ~
execute store result score #last daisukes.anchor run data get entity @s Pos[1] 1000
execute at @s run playsound minecraft:block.chain.hit player @a ~ ~ ~ 1 0.7
