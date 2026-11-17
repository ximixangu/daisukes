# Com a un bloc posat. Si ja no hi es, fora; al segon segon, mes vermell; als 2 s torna
execute if block ~ ~ ~ #minecraft:replaceable run return run function daisukes:modifiers/living_earth/unplace
scoreboard players remove @s daisukes.earth_t 1
execute if score @s daisukes.earth_t matches 20 as @e[type=minecraft:block_display,tag=daisukes.earth_shell,distance=..0.01] run data merge entity @s {block_state: {Name: "minecraft:red_stained_glass"}}
execute if score @s daisukes.earth_t matches ..0 run function daisukes:modifiers/living_earth/give_back
