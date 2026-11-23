# Com a mob vigilat, als peus (un tick de cada 8). Una mica de purpurina, com un enderman; si ha rebut mal des de
# l'ultima mirada, salta; si no, potser un salt a l'atzar
particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.3 2
scoreboard players set #hurt daisukes.em 0
execute if score #any_damage daisukes.em matches 1 run function daisukes:modifiers/ender_mobs/hurt_time
scoreboard players set #force daisukes.em 0
execute if score #hurt daisukes.em matches 1 run return run function daisukes:modifiers/ender_mobs/blink
execute if score #chance daisukes.em matches 1.. if predicate daisukes:ender_mobs/random run function daisukes:modifiers/ender_mobs/random
