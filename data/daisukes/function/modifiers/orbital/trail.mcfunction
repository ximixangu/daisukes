# Rastre de cada tipus (a la posicio del tick anterior: queda darrere seu). Mentre brilla blanca, purpurina: es el moment del perfect
execute if score #age daisukes.orb matches ..24 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.01 1
execute if entity @s[tag=daisukes.orb_volt] run particle minecraft:witch ~ ~ ~ 0.15 0.15 0.15 0 1
execute if entity @s[tag=daisukes.orb_volt] run particle minecraft:dust{color: [0.71, 0.3, 1.0], scale: 0.6} ~ ~ ~ 0.05 0.05 0.05 0 1
execute if entity @s[tag=daisukes.orb_wood] run particle minecraft:dust{color: [0.89, 0.64, 0.35], scale: 0.5} ~ ~ ~ 0.05 0.05 0.05 0 1
execute if entity @s[tag=daisukes.orb_slime] run particle minecraft:item_slime ~ ~ ~ 0.15 0.1 0.15 0 1
execute if entity @s[tag=daisukes.orb_slimelet] run particle minecraft:item_slime ~ ~ ~ 0.05 0.05 0.05 0 1
execute if entity @s[tag=daisukes.orb_ender] run particle minecraft:portal ~ ~ ~ 0.2 0.2 0.2 0.3 2
execute if entity @s[tag=daisukes.orb_copper] run particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0 1
