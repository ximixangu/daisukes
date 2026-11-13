# Nombre de modificadors que toca ara:
#   inici + (temps jugat / interval d'augment) * increment
#   com a minim el del Nether / l'End si algu hi ha entrat
#   com a maxim #max_count (si no es 0)
scoreboard players operation #new_count daisukes.math = #start_count daisukes.config

scoreboard players operation #escalate_ticks daisukes.math = #escalate_seconds daisukes.config
scoreboard players operation #escalate_ticks daisukes.math *= #20 daisukes.math
execute if score #escalate_ticks daisukes.math matches 1.. run function daisukes:engine/progress/add_escalations

execute if score #nether_reached daisukes.engine matches 1 if score #nether_count daisukes.config matches 1.. run scoreboard players operation #new_count daisukes.math > #nether_count daisukes.config
execute if score #end_reached daisukes.engine matches 1 if score #end_count daisukes.config matches 1.. run scoreboard players operation #new_count daisukes.math > #end_count daisukes.config
execute if score #max_count daisukes.config matches 1.. run scoreboard players operation #new_count daisukes.math < #max_count daisukes.config
execute if score #new_count daisukes.math matches ..-1 run scoreboard players set #new_count daisukes.math 0

execute if score #new_count daisukes.math = #current_count daisukes.engine run return 0

# Ha canviat: es desa per a les seguents tirades
execute store result storage daisukes:config count int 1 run scoreboard players get #new_count daisukes.math

# Si ha pujat durant la partida: avis i canvi de modificadors d'aqui a 5 s
execute if score #silent daisukes.math matches 0 if score #new_count daisukes.math > #current_count daisukes.engine run function daisukes:engine/progress/count_up

scoreboard players operation #current_count daisukes.engine = #new_count daisukes.math
