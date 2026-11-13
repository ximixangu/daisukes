scoreboard objectives add daisukes.laser dummy
scoreboard objectives add daisukes.laser_cd dummy
scoreboard objectives add daisukes.laser_x dummy
scoreboard objectives add daisukes.laser_z dummy

# Per si queden lasers d'una partida anterior (mon tancat amb el modificador actiu)
kill @e[type=block_display,tag=daisukes.laser]

# Ajustos (es poden canviar aqui):
#   #max      -> lasers alhora al voltant de cada jugador. Als 30 s puja sol a 4 (mira tick)
scoreboard players set #t daisukes.laser 0
scoreboard players set #max daisukes.laser 3
scoreboard players set @a daisukes.laser_cd 60

execute as @e[type=player] at @s run playsound minecraft:block.beacon.activate hostile @s ~ ~ ~ 1 1.2
execute as @e[type=player] at @s run playsound minecraft:block.amethyst_block.resonate hostile @s ~ ~ ~ 1 0.8
execute at @e[type=player,gamemode=!spectator] run particle minecraft:end_rod ~ ~1 ~ 1.5 0.6 1.5 0.08 80 force
execute at @e[type=player,gamemode=!spectator] run particle minecraft:electric_spark ~ ~0.2 ~ 2 0 2 0 40 force
