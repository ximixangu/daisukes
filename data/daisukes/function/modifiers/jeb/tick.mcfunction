# Qui ha mort i ja ha reaparegut torna a adoptar (si no te cap jeb_ a prop)
execute as @e[type=minecraft:player,scores={daisukes.jeb_deaths=1..}] run function daisukes:modifiers/jeb/respawn

# Cada jugador viu te la seva jeb_ (tambe qui entra mes tard)
execute as @e[type=minecraft:player,gamemode=!spectator] unless score @s daisukes.jeb matches 0.. at @s run function daisukes:modifiers/jeb/adopt

# Lluny de totes les jeb_ (mes de 8 blocs) durant 1 s: TNT als peus, i cada segon que hi segueixi
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/jeb/check
