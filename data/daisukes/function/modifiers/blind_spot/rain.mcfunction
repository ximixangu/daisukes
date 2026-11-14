# Pluja: al voltant de cada jugador que no sigui espectador, #seeds carregues (la primera pluja, 10)
scoreboard players operation #sow daisukes.bspot = #interval daisukes.bspot
scoreboard players operation #k0 daisukes.bspot = #seeds daisukes.bspot
execute if score #first daisukes.bspot matches 1 run scoreboard players set #k0 daisukes.bspot 10
execute if score #first daisukes.bspot matches 1 as @e[type=minecraft:player] at @s run playsound minecraft:block.trial_spawner.ominous_activate master @s ~ ~ ~ 0.8 0.8
scoreboard players set #first daisukes.bspot 0
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/blind_spot/sow
