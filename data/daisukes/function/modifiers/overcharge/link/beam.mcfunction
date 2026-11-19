# Com a mob de la xarxa, als peus: el raig cap al mob #t, si encara hi es, no s'ha allunyat i no hi ha cap bloc pel
# mig. Torna #res (1 continua, 0 trencat) i l'edat #age
scoreboard players set #res daisukes.oc 0
execute as @e[tag=daisukes.oc_mob,distance=..40,predicate=daisukes:overcharge/is_t,limit=1] run function daisukes:modifiers/overcharge/link/target
execute unless entity @e[tag=daisukes.oc_b] run return run function daisukes:modifiers/overcharge/link/snap
# 1: carregant (no fa mal); 2: actiu
scoreboard players set #mode daisukes.oc 1
execute if score #age daisukes.oc >= #beam_charge daisukes.oc run scoreboard players set #mode daisukes.oc 2
scoreboard players set #hold daisukes.oc 0
scoreboard players set #steps daisukes.oc 0
scoreboard players operation #max daisukes.oc = #keep_steps daisukes.oc
# Les espurnes que corren pel raig comencen un pas (mig bloc) mes enlla a cada revisio
scoreboard players operation #k daisukes.oc = #clock daisukes.oc
scoreboard players operation #k daisukes.oc /= #2 daisukes.oc
scoreboard players operation #k daisukes.oc %= #4 daisukes.oc
scoreboard players add #k daisukes.oc 1
# Del centre d'aquest mob al de l'altre (el punter). El centre: des d'un punt a 10 blocs, a l'altura dels peus,
# es mira als ulls del mob; avancant 2,95 blocs i tornant enrere en la direccio mirall, es puja un 59% de
# l'altura dels ulls
execute rotated 0 0 positioned ^ ^ ^10 facing entity @s eyes positioned as @s positioned ^ ^ ^2.95 rotated ~180 ~ positioned ^ ^ ^2.95 facing entity @e[type=minecraft:marker,tag=daisukes.oc_pointer,limit=1] feet run function daisukes:modifiers/overcharge/beam/step
execute unless score #res daisukes.oc matches 1 run return run function daisukes:modifiers/overcharge/link/snap
# Carregant: avanca si ningu no hi es a dins (mai no s'activa damunt d'un jugador); en arribar, s'activa
execute if score #mode daisukes.oc matches 1 if score #hold daisukes.oc matches 0 run scoreboard players add #age daisukes.oc 2
execute if score #mode daisukes.oc matches 1 if score #age daisukes.oc >= #beam_charge daisukes.oc run function daisukes:modifiers/overcharge/link/live
execute if score #mode daisukes.oc matches 2 run scoreboard players add #live daisukes.oc 1
tag @e[tag=daisukes.oc_b] remove daisukes.oc_b
