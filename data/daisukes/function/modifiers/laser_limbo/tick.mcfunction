# Dificultat: com mes temps, mes lasers alhora al voltant de cada jugador (2 als 30 s, 3 als 75 s)
scoreboard players add #t daisukes.laser 1
execute if score #t daisukes.laser matches 600 run scoreboard players set #max daisukes.laser 4

# Cada jugador: quan li toca, neix un laser a prop seu
execute as @e[type=player,gamemode=!spectator] at @s run function daisukes:modifiers/laser_limbo/player

# Cada laser: avanca, brilla i mira a qui travessa
execute as @e[type=block_display,tag=daisukes.laser] at @s run function daisukes:modifiers/laser_limbo/laser

# On es cada jugador ara (decimes de bloc), per saber al tick seguent si un laser l'ha travessat
execute as @e[type=player] store result score @s daisukes.laser_x run data get entity @s Pos[0] 10
execute as @e[type=player] store result score @s daisukes.laser_z run data get entity @s Pos[2] 10
