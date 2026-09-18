summon marker ~ ~ ~ {Tags:["daisukes.anvil_target"]}

spreadplayers ~ ~ 0 64 false @e[type=marker,tag=daisukes.anvil_target,limit=1,sort=nearest]

data modify entity @e[type=marker,tag=daisukes.anvil_target,limit=1,sort=nearest] Pos[1] set from entity @s Pos[1]

execute at @e[type=marker,tag=daisukes.anvil_target,limit=1,sort=nearest] run setblock ~ ~100 ~ minecraft:damaged_anvil

kill @e[type=marker,tag=daisukes.anvil_target]