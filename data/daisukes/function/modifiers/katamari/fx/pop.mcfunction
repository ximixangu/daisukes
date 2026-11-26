# Com a jugador que acaba de creixer un pas: s'infla (peix globus, mes greu com mes gran) amb una mica de pols
execute store result storage daisukes:katamari fx.pitch double 0.01 run scoreboard players get @s daisukes.km_pop
scoreboard players operation #r daisukes.km = @s daisukes.km_s
scoreboard players operation #r daisukes.km *= #3 daisukes.km
scoreboard players operation #r daisukes.km /= #10 daisukes.km
execute store result storage daisukes:katamari fx.r double 0.01 run scoreboard players get #r daisukes.km
scoreboard players operation #r daisukes.km *= #3 daisukes.km
execute store result storage daisukes:katamari fx.mid double 0.01 run scoreboard players get #r daisukes.km
function daisukes:modifiers/katamari/fx/pop_play with storage daisukes:katamari fx
