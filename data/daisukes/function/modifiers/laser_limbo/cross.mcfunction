# Com a jugador, des del laser (posicio i gir del laser). L'ha travessat aquest tick?
# Encara no te posicio anterior (acaba d'entrar): no compta
execute unless score @s daisukes.laser_x = @s daisukes.laser_x run return 0
execute if score #axis daisukes.laser matches 0 store result score #p1 daisukes.laser run data get entity @s Pos[2] 10
execute if score #axis daisukes.laser matches 0 run scoreboard players operation #p0 daisukes.laser = @s daisukes.laser_z
execute if score #axis daisukes.laser matches 1 store result score #p1 daisukes.laser run data get entity @s Pos[0] 10
execute if score #axis daisukes.laser matches 1 run scoreboard players operation #p0 daisukes.laser = @s daisukes.laser_x

# Mes de 1.5 blocs en un tick (teletransport, reaparicio, perla...): no compta
scoreboard players operation #move daisukes.laser = #p1 daisukes.laser
scoreboard players operation #move daisukes.laser -= #p0 daisukes.laser
execute unless score #move daisukes.laser matches -15..15 run return 0

# Davant o darrere del raig, abans i ara. Si no ha canviat de costat, no l'ha travessat
scoreboard players operation #p0 daisukes.laser -= #b0 daisukes.laser
scoreboard players operation #p1 daisukes.laser -= #b1 daisukes.laser
execute if score #p0 daisukes.laser matches 1.. if score #p1 daisukes.laser matches 1.. run return 0
execute if score #p0 daisukes.laser matches ..0 if score #p1 daisukes.laser matches ..0 run return 0

# L'ha travessat. Li passa pel cos? Alcada del raig sobre els peus (#rel) entre 0 i l'alcada del jugador:
# 1.8 dret, 1.5 ajupit, 0.6 nedant
execute store result score #y daisukes.laser run data get entity @s Pos[1] 10
scoreboard players operation #rel daisukes.laser = #h daisukes.laser
scoreboard players operation #rel daisukes.laser -= #y daisukes.laser
scoreboard players set #tall daisukes.laser 18
execute if predicate daisukes:laser_limbo/sneaking run scoreboard players set #tall daisukes.laser 15
execute if predicate daisukes:laser_limbo/swimming run scoreboard players set #tall daisukes.laser 6
execute if score #rel daisukes.laser matches 1.. if score #rel daisukes.laser < #tall daisukes.laser run return run function daisukes:modifiers/laser_limbo/hit

# L'ha esquivat (i li ha passat a prop): premi
execute if score #rel daisukes.laser matches -20..30 run function daisukes:modifiers/laser_limbo/dodge
