# Estelles: 10 s picant i pegant fluix (fatiga i debilitat) i punxen (1 cor)
particle minecraft:block{block_state: "minecraft:oak_log"} ~ ~ ~ 0.3 0.3 0.3 0 40
particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.4 20
playsound minecraft:enchant.thorns.hit master @a ~ ~ ~ 1 1
playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] run effect give @s minecraft:mining_fatigue 15 1
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] run effect give @s minecraft:weakness 15 0
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] run damage @s 6 minecraft:cactus
