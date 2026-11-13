execute as @e[type=minecraft:zombie,tag=daisukes.tsunami] run function daisukes:modifiers/zombie_tsunami/recede

execute in minecraft:overworld run weather clear
gamerule advance_weather true
