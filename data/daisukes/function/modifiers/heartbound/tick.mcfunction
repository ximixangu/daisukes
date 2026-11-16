scoreboard players add #now daisukes.heart 1
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/heartbound/player
scoreboard players add #sec daisukes.heart 1
execute if score #sec daisukes.heart matches 20.. run function daisukes:modifiers/heartbound/second
