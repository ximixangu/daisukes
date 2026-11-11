scoreboard players add #timer agua_timer 1

execute if score #timer agua_timer matches 100.. run function daisukes:modifiers/agua/gen

execute if score #timer agua_timer matches 100.. run scoreboard players set #timer agua_timer 0

execute as @e[type=minecraft:area_effect_cloud] at @s run function daisukes:modifiers/agua/impact