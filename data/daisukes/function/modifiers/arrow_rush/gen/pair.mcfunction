# Doble: la segona fletxa (b, h) tambe a l'atzar
data modify storage daisukes:rush first set from storage daisukes:rush arg
execute store result score #i daisukes.rush run random value 1..4
function daisukes:modifiers/arrow_rush/gen/dir
data modify storage daisukes:rush first.b set from storage daisukes:rush arg.a
data modify storage daisukes:rush first.h set from storage daisukes:rush arg.g
function daisukes:modifiers/arrow_rush/gen/double with storage daisukes:rush first
