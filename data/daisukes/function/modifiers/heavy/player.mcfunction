# Altura dels peus, en centesimes de bloc
execute store result score #y daisukes.weight run data get entity @s Pos[1] 100

# Primer cop, acabat de reapareixer, o enfilant-se, nedant, volant, planant o muntant: no es caure
execute unless score @s daisukes.weight = @s daisukes.weight run return run function daisukes:modifiers/heavy/reset
execute if score @s daisukes.weight_dead matches 1.. run return run function daisukes:modifiers/heavy/reset
execute if predicate daisukes:heavy/no_fall run return run function daisukes:modifiers/heavy/reset

# A l'aire: es guarda el que portes caigut (l'altura d'on vas saltar no es toca)
execute unless predicate daisukes:heavy/on_ground run return run execute store result score @s daisukes.weight_fall run data get entity @s fall_distance 100

# A terra: centesimes de bloc per sota d'on vas saltar
scoreboard players operation #n daisukes.weight = @s daisukes.weight
scoreboard players operation #n daisukes.weight -= #y daisukes.weight

# Has caigut si venies de l'aire i ets prou avall (#min). Si has baixat molt mes del que has caigut (#margin: una perla,
# un teletransport), no compta
scoreboard players operation #max daisukes.weight = @s daisukes.weight_fall
scoreboard players operation #max daisukes.weight += #margin daisukes.weight
execute if score @s daisukes.weight_fall matches 1.. if score #n daisukes.weight >= #min daisukes.weight if score #n daisukes.weight <= #max daisukes.weight run function daisukes:modifiers/heavy/land

function daisukes:modifiers/heavy/reset
