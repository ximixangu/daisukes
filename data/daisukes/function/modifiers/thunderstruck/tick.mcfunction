execute as @e[type=minecraft:player,gamemode=!spectator] run function daisukes:modifiers/thunderstruck/charge

execute as @e[type=minecraft:marker,tag=daisukes.thunder_target] at @s run function daisukes:modifiers/thunderstruck/countdown
