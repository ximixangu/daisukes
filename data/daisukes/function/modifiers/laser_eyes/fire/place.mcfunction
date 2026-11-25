# Al centre del bloc on va el foc (#heat torna a 0: si continua mirant, ho tornara a provar). Si ja crema, res. Mai
# dins de qui dispara ni del que munta. Si alla no hi pot haver foc (aigua, neu, lava...) o no s'aguanta (sense terra
# a sota ni res que cremi al costat), nomes fa fumet. Dins d'un marc d'obsidiana obre el portal, com un encenedor
scoreboard players set #heat daisukes.le 0
execute if block ~ ~ ~ #minecraft:fire run return 0
execute align xyz if entity @e[tag=daisukes.le_me,dx=0,dy=0,dz=0] run return 0
execute unless block ~ ~ ~ #daisukes:laser_eyes/kindling run return run function daisukes:modifiers/laser_eyes/fire/fizzle
setblock ~ ~ ~ minecraft:fire
execute unless block ~ ~ ~ #minecraft:fire unless block ~ ~ ~ minecraft:nether_portal run return run function daisukes:modifiers/laser_eyes/fire/fizzle
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.7 1.3
particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.02 10 force
particle minecraft:lava ~ ~ ~ 0.2 0.1 0.2 0 2 force
