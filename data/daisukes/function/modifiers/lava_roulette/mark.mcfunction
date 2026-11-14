# Com a jugador, al centre de la cara de dalt del bloc trobat. El punter de la ruleta: un marc de guspires
particle minecraft:wax_off ~0.5 ~0.05 ~0.5 0 0 0 0 1
particle minecraft:wax_off ~0.5 ~0.05 ~-0.5 0 0 0 0 1
particle minecraft:wax_off ~-0.5 ~0.05 ~0.5 0 0 0 0 1
particle minecraft:wax_off ~-0.5 ~0.05 ~-0.5 0 0 0 0 1
particle minecraft:wax_off ~0.5 ~0.05 ~ 0 0 0 0 1
particle minecraft:wax_off ~-0.5 ~0.05 ~ 0 0 0 0 1
particle minecraft:wax_off ~ ~0.05 ~0.5 0 0 0 0 1
particle minecraft:wax_off ~ ~0.05 ~-0.5 0 0 0 0 1
particle minecraft:electric_spark ~ ~0.1 ~ 0.25 0.05 0.25 0 6

# Tria final (#picking 1): aquest es el bloc que es convertira en lava
execute if score #picking daisukes.lava matches 1 run function daisukes:modifiers/lava_roulette/capture
return 1
