# Macro: {rh}. Com al pols, despres de la descarga: l'ona arriba a la vora (2 ticks) i queden espurnes; 8 ticks i fora
scoreboard players add @s daisukes.oc_a2 1
execute if score @s daisukes.oc_a2 matches 8.. run return run kill @s
execute if entity @s[tag=daisukes.oc_grounded] run return run particle minecraft:electric_spark ~ ~-0.5 ~ 0.05 0.4 0.05 0.02 2 force
execute if score @s daisukes.oc_a2 matches 1 run function daisukes:modifiers/overcharge/pulse/ring with storage daisukes:overcharge config.ring2
execute if score @s daisukes.oc_a2 matches 2 run function daisukes:modifiers/overcharge/pulse/ring with storage daisukes:overcharge config.ring3
$particle minecraft:electric_spark ~ ~0.1 ~ $(rh) 0 $(rh) 0 2 force
