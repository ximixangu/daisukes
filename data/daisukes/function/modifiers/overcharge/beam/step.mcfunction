# Un pas del raig (mig bloc), mirant cap al punter. Torna #res: 1 ha arribat, 2 massa llarg (#max passos), 3 un bloc
# pel mig. #mode: 0 nomes prova, 1 carregant, 2 actiu, 3 nomes dibuix (arc cap a un parallamps)
scoreboard players add #steps daisukes.oc 1
execute if score #steps daisukes.oc > #max daisukes.oc run return run scoreboard players set #res daisukes.oc 2
execute if entity @e[type=minecraft:marker,tag=daisukes.oc_pointer,distance=..0.5] run return run scoreboard players set #res daisukes.oc 1
execute unless block ~ ~ ~ #daisukes:overcharge/clear run return run scoreboard players set #res daisukes.oc 3
# Jugadors que el toquen (un cub d'1 bloc al voltant del punt). Al primer bloc de cada punta no: als mobs se'ls ha
# de poder picar de prop
execute if score #mode daisukes.oc matches 1..2 if score #steps daisukes.oc matches 3.. unless entity @e[type=minecraft:marker,tag=daisukes.oc_pointer,distance=..1] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=minecraft:player,dx=0,dy=0,dz=0,gamemode=!spectator,gamemode=!creative] positioned ~0.5 ~0.5 ~0.5 run function daisukes:modifiers/overcharge/beam/touch
execute if score #mode daisukes.oc matches 1 run particle minecraft:electric_spark ~ ~ ~ 0.08 0.08 0.08 0 1 force
execute if score #mode daisukes.oc matches 2 run function daisukes:modifiers/overcharge/beam/draw
execute if score #mode daisukes.oc matches 3 run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.02 3 force
execute positioned ^ ^ ^0.5 run function daisukes:modifiers/overcharge/beam/step
