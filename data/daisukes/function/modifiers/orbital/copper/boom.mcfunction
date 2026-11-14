# Sobrecarrega: descarrega com un llamp, pero sense foc (4 cors)
particle minecraft:flash{color: [0.6, 0.95, 1.0, 1.0]} ~ ~ ~
particle minecraft:electric_spark ~ ~ ~ 0.4 0.4 0.4 0.8 40
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.8 1.2
playsound minecraft:block.copper.break master @a ~ ~ ~ 1 0.7
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] at @s run particle minecraft:end_rod ~ ~3 ~ 0.05 2 0.05 0 30
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.8 0.3 0.5 40
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] run damage @s 8 minecraft:lightning_bolt
