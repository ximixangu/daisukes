# Com al jugador que gira cap a la dreta: corda = graus x 5/3 (una volta, un 25 %)
scoreboard players operation #w daisukes.cw = #d daisukes.cw
scoreboard players operation #w daisukes.cw *= #5 daisukes.cw
scoreboard players operation #w daisukes.cw /= #3 daisukes.cw
function daisukes:modifiers/clockwork/wind_one
# Si te un amic just davant, d'esquena (a menys d'1 bloc del punt que te 0,8 blocs darrere): tambe li dona corda
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,distance=0.01..2.5] at @s rotated ~ 0 positioned ^ ^ ^-0.8 if entity @a[tag=daisukes.cw_me,distance=..1] run function daisukes:modifiers/clockwork/wind_one
