# Com a jugador, un atribut de la llista cada cop: valor = (mida - 1) x per / 100
execute unless data storage daisukes:katamari todo[0] run return 0
data modify storage daisukes:katamari a set from storage daisukes:katamari todo[0]
data remove storage daisukes:katamari todo[0]
execute store result score #v daisukes.km run data get storage daisukes:katamari a.per
scoreboard players operation #v daisukes.km *= #g daisukes.km
execute store result storage daisukes:katamari a.v double 0.0001 run scoreboard players get #v daisukes.km
function daisukes:modifiers/katamari/attr/set with storage daisukes:katamari a
function daisukes:modifiers/katamari/attr/next
