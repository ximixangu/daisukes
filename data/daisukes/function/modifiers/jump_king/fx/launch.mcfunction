# Com al jugador que salta, amb #c: so de salt (mes greu com mes carregat) i una bufada de pols als peus
scoreboard players operation #p daisukes.jk = #c daisukes.jk
scoreboard players operation #p daisukes.jk *= #-6 daisukes.jk
scoreboard players operation #p daisukes.jk /= #10 daisukes.jk
scoreboard players add #p daisukes.jk 1500
execute store result storage daisukes:jump_king fx.p double 0.001 run scoreboard players get #p daisukes.jk
function daisukes:modifiers/jump_king/fx/launch_play with storage daisukes:jump_king fx
particle minecraft:poof ~ ~0.1 ~ 0.25 0.02 0.25 0.02 4
execute if score #c daisukes.jk matches 334.. run particle minecraft:poof ~ ~0.1 ~ 0.35 0.02 0.35 0.04 5
execute if score #c daisukes.jk matches 667.. run particle minecraft:poof ~ ~0.1 ~ 0.45 0.02 0.45 0.06 6
