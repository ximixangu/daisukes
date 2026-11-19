# Com a mob de la xarxa: el raig s'ha trencat (l'altre mob ja no hi es, massa lluny o un bloc pel mig). Si ja era
# actiu, espetega
scoreboard players set #res daisukes.oc 0
tag @e[tag=daisukes.oc_b] remove daisukes.oc_b
execute if score #age daisukes.oc >= #beam_charge daisukes.oc run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.3 0.2 0.05 8 force
execute if score #age daisukes.oc >= #beam_charge daisukes.oc run playsound minecraft:block.copper_bulb.turn_off hostile @a ~ ~ ~ 0.5 1.2
