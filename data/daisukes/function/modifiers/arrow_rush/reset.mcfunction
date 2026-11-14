# El pas torna a l'inici (doble massa lenta, o mantenir deixat anar)
scoreboard players set @s daisukes.rush_n 0
$execute store result score @s daisukes.rush_a run data get storage daisukes:rush p.$(id).step.a
$data modify storage daisukes:rush p.$(id).cur set from storage daisukes:rush p.$(id).step.s[0]
function daisukes:modifiers/arrow_rush/show with storage daisukes:rush tmp
