# Com al jugador, un cop per segon els ultims #ticks segons: tic-tac cada cop mes agut, nomes per a ell
# To = 1 + 0,3 x (segons que ja han sonat), fins a 2
scoreboard players operation #s daisukes.ek = @s daisukes.ek_t
scoreboard players operation #s daisukes.ek /= #20 daisukes.ek
scoreboard players operation #p daisukes.ek = #ticks daisukes.ek
scoreboard players operation #p daisukes.ek -= #s daisukes.ek
scoreboard players operation #p daisukes.ek *= #30 daisukes.ek
scoreboard players add #p daisukes.ek 100
execute if score #p daisukes.ek matches 201.. run scoreboard players set #p daisukes.ek 200
execute store result storage daisukes:ekko fx.pitch double 0.01 run scoreboard players get #p daisukes.ek
function daisukes:modifiers/ekko/fx/tick_play with storage daisukes:ekko fx
