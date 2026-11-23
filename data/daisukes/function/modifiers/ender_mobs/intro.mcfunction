# Com a jugador, als seus peus: el modificador comenca. Els mobs del voltant s'envolten de purpurina d'enderman
particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.05 60
playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 0.8 0.6
execute as @e[distance=..32,type=!minecraft:player,type=!#daisukes:non_mob,type=!#daisukes:ender_mobs/never] at @s run particle minecraft:portal ~ ~1 ~ 0.3 0.6 0.3 0.8 30
