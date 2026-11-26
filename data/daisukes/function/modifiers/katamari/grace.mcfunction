# Com a jugador gran que es a l'aire quan s'acaba: caiguda segura de la seva mida, amb un modificador a part
# (daisukes:katamari_land), fins que toqui a terra
scoreboard players operation #g daisukes.km = @s daisukes.km_s
scoreboard players remove #g daisukes.km 100
execute store result storage daisukes:katamari fx.v double 0.01 run scoreboard players get #g daisukes.km
function daisukes:modifiers/katamari/grace_add with storage daisukes:katamari fx
tag @s add daisukes.km_land
