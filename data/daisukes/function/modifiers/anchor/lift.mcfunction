# Com a l'encadenat: puja a poc a poc (float) des d'on es ara
execute store result score #last daisukes.anchor run data get entity @s Pos[1] 1000
execute store result score #ry daisukes.anchor run data get entity @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] Pos[1] 1000
scoreboard players set #s daisukes.anchor 0
scoreboard players set #c daisukes.anchor 1000
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 0.8
particle minecraft:crit ~ ~0.2 ~ 0.3 0.05 0.3 0.1 10 force @a[distance=..48]
