# Encert. Mantenir no avanca per pulsacions (ho fa "hold")
execute if score @s daisukes.rush_k matches 4 run return 0
# Nota del pas i particules cap on has premut
function daisukes:modifiers/arrow_rush/note with storage daisukes:rush tmp
function daisukes:modifiers/arrow_rush/spark
scoreboard players add @s daisukes.rush_n 1
execute if score @s daisukes.rush_k matches 0 run return run function daisukes:modifiers/arrow_rush/done with storage daisukes:rush tmp
execute if score @s daisukes.rush_k matches 1 if score @s daisukes.rush_n matches 2.. run return run function daisukes:modifiers/arrow_rush/done with storage daisukes:rush tmp
execute if score @s daisukes.rush_k matches 2 if score @s daisukes.rush_n matches 3.. run return run function daisukes:modifiers/arrow_rush/done with storage daisukes:rush tmp
execute if score @s daisukes.rush_k matches 3 if score @s daisukes.rush_n matches 3.. run return run function daisukes:modifiers/arrow_rush/done with storage daisukes:rush tmp
# A mig pas: la grossa s'aprima, la rosa es parteix, a la doble li toca la segona (0,4 s)
execute if score @s daisukes.rush_k matches 1 run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.8 0.7
execute if score @s daisukes.rush_k matches 2 if score @s daisukes.rush_n matches 1 run playsound minecraft:item.bundle.remove_one master @s ~ ~ ~ 1 1.2
execute store result storage daisukes:rush tmp.d int 1 run scoreboard players get @s daisukes.rush_n
execute if score @s daisukes.rush_k matches 3 run scoreboard players set @s daisukes.rush_n 10
$execute if score @s daisukes.rush_k matches 3 store result score @s daisukes.rush_a run data get storage daisukes:rush p.$(id).step.b
function daisukes:modifiers/arrow_rush/state with storage daisukes:rush tmp
