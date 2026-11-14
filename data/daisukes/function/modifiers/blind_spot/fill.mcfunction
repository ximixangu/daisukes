# A cada jugador que no sigui espectador, fins a 4 intents de carrega nova (si no en te #cap a prop)
scoreboard players set #fill daisukes.bspot 0
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/blind_spot/fill_player
