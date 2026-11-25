# Els lasers s'apaguen i no en queda res: ni lasers, ni marques, ni etiquetes, ni puntuacions (tambe les dels mobs).
# El foc que hagin ences no es toca: crema i s'apaga com qualsevol altre foc
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.6 1.6
kill @e[tag=daisukes.le,type=!minecraft:player]
tag @a remove daisukes.le_me
tag @a remove daisukes.le_ghost
scoreboard objectives remove daisukes.le
scoreboard objectives remove daisukes.le_id
scoreboard objectives remove daisukes.le_tgt
scoreboard objectives remove daisukes.le_heat
scoreboard objectives remove daisukes.le_len
data remove storage daisukes:laser_eyes m
