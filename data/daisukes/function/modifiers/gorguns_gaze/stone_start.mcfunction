# Petrificat: no es pot moure, ni saltar, ni picar, ni fer mal (com a Enter the Gungeon, no pot "disparar")
attribute @s minecraft:movement_speed modifier add daisukes:petrified -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add daisukes:petrified -1 add_multiplied_total
attribute @s minecraft:block_break_speed modifier add daisukes:petrified -1 add_multiplied_total
attribute @s minecraft:attack_damage modifier add daisukes:petrified -1 add_multiplied_total

playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 0.7 1.3
playsound minecraft:block.deepslate.place player @a[distance=..24] ~ ~ ~ 1.2 0.6
particle minecraft:block{block_state:"minecraft:stone"} ~ ~1 ~ 0.3 0.6 0.3 0 40 force
particle minecraft:dust{color:[0.25,1.0,0.45],scale:1.2} ~ ~1 ~ 0.35 0.7 0.35 0 20 force

title @s times 5 10 15
title @s subtitle {text:"Petrified",color:"#A9B3AA",bold:true}
title @s title ""
