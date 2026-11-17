# Com al jugador que rep corda, als seus peus: un clic de carraca, mes agut com mes plena, i espurnes daurades que pugen
scoreboard players operation #p daisukes.cw = @s daisukes.cw_s
scoreboard players operation #p daisukes.cw /= #24 daisukes.cw
scoreboard players add #p daisukes.cw 700
execute store result storage daisukes:clockwork pitch float 0.001 run scoreboard players get #p daisukes.cw
scoreboard players operation #h daisukes.cw = @s daisukes.cw_s
scoreboard players operation #h daisukes.cw /= #15 daisukes.cw
scoreboard players add #h daisukes.cw 200
execute store result storage daisukes:clockwork lift float 0.001 run scoreboard players get #h daisukes.cw
function daisukes:modifiers/clockwork/fx/click with storage daisukes:clockwork
scoreboard players operation #tg daisukes.cw = @s daisukes.cw
execute as @e[type=minecraft:item_display,tag=daisukes.cw_key] if score @s daisukes.cw = #tg daisukes.cw at @s run particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0.05 2 normal @a
