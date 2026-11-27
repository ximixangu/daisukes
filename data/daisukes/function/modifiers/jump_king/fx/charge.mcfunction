# Com al jugador que carrega: s'ajup a poc a poc (fins al #squat %) i als peus li surt pols, cada cop mes calenta
function daisukes:modifiers/jump_king/frac
scoreboard players operation #s daisukes.jk = #squat daisukes.jk
scoreboard players operation #s daisukes.jk *= #c daisukes.jk
scoreboard players operation #s daisukes.jk /= #100 daisukes.jk
#function daisukes:modifiers/jump_king/fx/squat
execute if score #c daisukes.jk matches ..249 run particle minecraft:dust{color:[1.0,1.0,1.0],scale:0.6} ~ ~0.05 ~ 0.3 0.02 0.3 0 1
execute if score #c daisukes.jk matches 250..499 run particle minecraft:dust{color:[1.0,0.93,0.55],scale:0.75} ~ ~0.05 ~ 0.3 0.02 0.3 0 1
execute if score #c daisukes.jk matches 500..749 run particle minecraft:dust{color:[1.0,0.76,0.2],scale:0.9} ~ ~0.05 ~ 0.3 0.02 0.3 0 2
execute if score #c daisukes.jk matches 750..999 run particle minecraft:dust{color:[1.0,0.52,0.1],scale:1.0} ~ ~0.05 ~ 0.3 0.02 0.3 0 2
execute if score #c daisukes.jk matches 1000.. run particle minecraft:dust{color:[1.0,0.3,0.08],scale:1.1} ~ ~0.05 ~ 0.3 0.02 0.3 0 2
execute if score #c daisukes.jk matches 1000.. run particle minecraft:end_rod ~ ~0.1 ~ 0.25 0.05 0.25 0.02 1
