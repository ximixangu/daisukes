# Com a jugador amb la mida nova: cada atribut de config.attributes, segons la mida. A mida normal, cap
execute if score @s daisukes.km_s matches ..100 run return run function daisukes:modifiers/katamari/attr/clear
scoreboard players operation #g daisukes.km = @s daisukes.km_s
scoreboard players remove #g daisukes.km 100
data modify storage daisukes:katamari todo set from storage daisukes:katamari config.attributes
function daisukes:modifiers/katamari/attr/next
tag @s add daisukes.km
