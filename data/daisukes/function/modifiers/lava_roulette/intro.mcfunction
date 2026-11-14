# Entrada (durant el primer descans): titol, tres anells de foc que s'obren al voltant de cada jugador
# i fanfarra de trompeta (els blocs musicals sobre coure de la 26.1): Re, Sol, Si... Re!

execute if score #t daisukes.lava matches 50 as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/lava_roulette/ring {r: 1.5}
execute if score #t daisukes.lava matches 47 as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/lava_roulette/ring {r: 3}
execute if score #t daisukes.lava matches 44 as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/lava_roulette/ring {r: 4.5}

execute if score #t daisukes.lava matches 50 as @a at @s run playsound minecraft:block.note_block.trumpet master @s ~ ~ ~ 0.8 0.793701
execute if score #t daisukes.lava matches 47 as @a at @s run playsound minecraft:block.note_block.trumpet master @s ~ ~ ~ 0.8 1.059463
execute if score #t daisukes.lava matches 44 as @a at @s run playsound minecraft:block.note_block.trumpet master @s ~ ~ ~ 0.8 1.334840
execute if score #t daisukes.lava matches 40 as @a at @s run playsound minecraft:block.note_block.trumpet master @s ~ ~ ~ 1 1.587401
execute if score #t daisukes.lava matches 40 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.793701
execute if score #t daisukes.lava matches 40 as @a at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 0.5 0.7
