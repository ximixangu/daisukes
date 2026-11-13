# Com a laser nou: recula 12 blocs (d'alla vindra cap al jugador) i s'encen amb un espurneig a cada punta
tag @s remove daisukes.laser_new
tp @s ^ ^ ^-12
execute at @s run particle minecraft:end_rod ^12 ^ ^ 0.1 0.1 0.1 0.05 12 force
execute at @s run particle minecraft:end_rod ^-12 ^ ^ 0.1 0.1 0.1 0.05 12 force
# So greu pels vermells i agut pels blaus: se sap quin ve sense mirar
execute if entity @s[tag=daisukes.laser_low] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1.5 0.7
execute if entity @s[tag=daisukes.laser_high] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1.5 1.5
