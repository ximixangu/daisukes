# Raig actiu: blau electric (de blanc a blau) i, cada 4 passos, una espurna (#k compta enrere)
particle minecraft:dust_color_transition{from_color: [0.8, 0.95, 1.0], to_color: [0.25, 0.6, 1.0], scale: 0.9} ~ ~ ~ 0.05 0.05 0.05 0 1 force
scoreboard players remove #k daisukes.oc 1
execute if score #k daisukes.oc matches ..0 run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute if score #k daisukes.oc matches ..0 run scoreboard players set #k daisukes.oc 4
