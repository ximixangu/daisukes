# Rellotge de 20 ticks: les erugues sonen cada 5 (#c5), les mines enceses parpellegen cada 2 (#c4) i el fre de girar
# es repassa cada segon (free)
scoreboard players add #clock daisukes.tk 1
execute if score #clock daisukes.tk matches 20.. run scoreboard players set #clock daisukes.tk 0
scoreboard players operation #c5 daisukes.tk = #clock daisukes.tk
scoreboard players operation #c5 daisukes.tk %= #5 daisukes.tk
scoreboard players operation #c4 daisukes.tk = #clock daisukes.tk
scoreboard players operation #c4 daisukes.tk %= #4 daisukes.tk

# Jugadors sense id (els que acaben d'entrar): cada mina sap de qui es
execute as @a unless score @s daisukes.tk_id matches 1.. run function daisukes:modifiers/tank/new_id

# Cada jugador: salt, Shift i gir. Si algu passa a espectador mentre gira, fora el fre (o es quedaria amb el FOV
# estret)
execute as @a[gamemode=!spectator] at @s run function daisukes:modifiers/tank/player
execute as @a[gamemode=spectator,tag=daisukes.tk_turn] run function daisukes:modifiers/tank/release

# Mines enceses, nomes si n'hi ha (#lit): compte enrere i esclat
execute if score #lit daisukes.tk matches 1.. run function daisukes:modifiers/tank/lit

# 4 cops per segon, totes les mines: les que s'han quedat sense terra es trenquen (mine/check)
execute if score #c5 daisukes.tk matches 1 as @e[type=minecraft:block_display,tag=daisukes.tk_mine] at @s run function daisukes:modifiers/tank/mine/check
