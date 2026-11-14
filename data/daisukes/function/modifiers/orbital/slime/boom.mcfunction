# Enganxat: 4 s molt lent
particle minecraft:item_slime ~ ~ ~ 0.3 0.3 0.3 0 30
playsound minecraft:entity.slime.squish master @a ~ ~ ~ 1 0.7
playsound minecraft:block.honey_block.slide master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] at @s run particle minecraft:item_slime ~ ~0.5 ~ 0.3 0.4 0.3 0 25
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] run effect give @s minecraft:slowness 10 3
