# Com a jugador, als seus peus: el modificador comenca
particle minecraft:portal ~ ~1 ~ 0.4 0.8 0.4 1.5 150
particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.05 80
particle minecraft:instant_effect{color: [0.71, 0.3, 1.0]} ~ ~0.2 ~ 1.2 0.1 1.2 0 60
playsound minecraft:block.end_portal_frame.fill player @s ~ ~ ~ 1 0.8
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.6 0.6
