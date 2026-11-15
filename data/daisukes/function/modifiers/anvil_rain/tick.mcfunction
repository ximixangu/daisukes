# Cada tick, una enclusa per jugador de l'Overworld: a l'atzar a menys de 32 blocs, 100 blocs per sobre seu.
# "Overworld" = ni Nether ni End: aixi tambe val per a l'overworld de Fahare (fahare:overworld)
execute as @e[type=minecraft:player,gamemode=!spectator] at @s unless dimension minecraft:the_nether unless dimension minecraft:the_end run function daisukes:modifiers/anvil_rain/spawn_anvil
