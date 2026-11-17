scoreboard players add #now daisukes.weight 1
# @e (i no @a) perque no compti els jugadors morts
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/heavy/player
