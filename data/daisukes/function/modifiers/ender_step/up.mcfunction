# Com a jugador, als seus peus: salta amunt. 1,5 blocs, com el punt mes alt d'un salt normal: dona temps
# de posar un bloc a sota (pilars). Si el sostre no ho deixa, nomes 1
scoreboard players operation @s daisukes.ender_step = #jump daisukes.ender_step
particle minecraft:reverse_portal ~ ~0.5 ~ 0.25 0.3 0.25 0.02 10
execute positioned ~ ~3.3 ~ if predicate daisukes:ender_step/open at @s run tp @s ~ ~1.5 ~
execute positioned ~ ~3.3 ~ unless predicate daisukes:ender_step/open at @s run tp @s ~ ~1 ~
execute at @s run particle minecraft:portal ~ ~0.9 ~ 0.2 0.4 0.2 0.6 16
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.25 1.7
