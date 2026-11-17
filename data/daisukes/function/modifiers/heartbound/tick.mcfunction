scoreboard players add #now daisukes.heart 1
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/heartbound/player
# Cada creaking: la seva capsa de cops el segueix i, si l'han picat, tremola
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] at @s run function daisukes:modifiers/heartbound/body
scoreboard players add #sec daisukes.heart 1
execute if score #sec daisukes.heart matches 20.. run function daisukes:modifiers/heartbound/second
