# Cada tick, una enclusa per jugador de l'Overworld: a l'atzar a menys de 32 blocs, 100 blocs per sobre seu
execute as @e[type=minecraft:player,gamemode=!spectator] at @s if dimension minecraft:overworld run function daisukes:modifiers/anvil_rain/spawn_anvil
