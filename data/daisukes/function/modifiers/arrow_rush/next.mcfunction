# Pas seguent (o sequencia acabada)
$execute unless data storage daisukes:rush p.$(id).rest[0] run return run function daisukes:modifiers/arrow_rush/win with storage daisukes:rush tmp
$data modify storage daisukes:rush p.$(id).step set from storage daisukes:rush p.$(id).rest[0]
$data remove storage daisukes:rush p.$(id).rest[0]
$data modify storage daisukes:rush p.$(id).cur set from storage daisukes:rush p.$(id).step.s[0]
$execute store result score @s daisukes.rush_a run data get storage daisukes:rush p.$(id).step.a
$execute store result score @s daisukes.rush_k run data get storage daisukes:rush p.$(id).step.k
scoreboard players set @s daisukes.rush_n 0
execute if score @s daisukes.rush_a matches 7 run function daisukes:modifiers/arrow_rush/box
function daisukes:modifiers/arrow_rush/show with storage daisukes:rush tmp
