# Rellotge de 20 ticks: cada jugador fa el seu segon (blocs picats i comprovacio dels atributs) al seu tick
# (daisukes.km_ph). Aixafar, un tick si i un no
scoreboard players add #clock daisukes.km 1
execute if score #clock daisukes.km matches 20.. run scoreboard players set #clock daisukes.km 0
scoreboard players operation #odd daisukes.km = #clock daisukes.km
scoreboard players operation #odd daisukes.km %= #2 daisukes.km
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/katamari/player
