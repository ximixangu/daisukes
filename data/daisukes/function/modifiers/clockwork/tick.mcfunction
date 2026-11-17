scoreboard players add #now daisukes.cw 1
# Cada minut es gasta un 10 % mes (fins a x1,6)
scoreboard players operation #q daisukes.cw = #now daisukes.cw
scoreboard players operation #q daisukes.cw %= #1200 daisukes.cw
execute if score #q daisukes.cw matches 0 if score #mult daisukes.cw matches ..15 run scoreboard players add #mult daisukes.cw 1
execute if score #intro daisukes.cw matches 1.. run scoreboard players remove #intro daisukes.cw 1
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/clockwork/player
# Qui ha rebut corda d'un amic que anava despres d'ell (encara te la marca): el nivell i la barra, ja amb la corda nova
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,tag=daisukes.cw_wound] at @s run function daisukes:modifiers/clockwork/level
scoreboard players add #sec daisukes.cw 1
execute if score #sec daisukes.cw matches 20.. run function daisukes:modifiers/clockwork/second
