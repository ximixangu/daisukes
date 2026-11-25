# Com a jugador: tros numero #i de la linia recta que va de l'ultima casella (#i = 0, ella mateixa) a la d'ara (#i = #k,
# que no en porta). A cada eix: ultima + signe * arrodonit(#i * |d| / #k), que es ultima + signe * ((2 * #i * |d| + #k)
# / (2 * #k)): sempre amb nombres positius, perque la divisio del scoreboard arrodoneix cap avall
scoreboard players operation #t daisukes.sn = #i daisukes.sn
scoreboard players operation #t daisukes.sn *= #ax daisukes.sn
scoreboard players operation #t daisukes.sn *= #2 daisukes.sn
scoreboard players operation #t daisukes.sn += #k daisukes.sn
scoreboard players operation #t daisukes.sn /= #k2 daisukes.sn
scoreboard players operation #t daisukes.sn *= #sx daisukes.sn
scoreboard players operation #t daisukes.sn += @s daisukes.sn_x
execute store result storage daisukes:snake push.x int 1 run scoreboard players get #t daisukes.sn

scoreboard players operation #t daisukes.sn = #i daisukes.sn
scoreboard players operation #t daisukes.sn *= #ay daisukes.sn
scoreboard players operation #t daisukes.sn *= #2 daisukes.sn
scoreboard players operation #t daisukes.sn += #k daisukes.sn
scoreboard players operation #t daisukes.sn /= #k2 daisukes.sn
scoreboard players operation #t daisukes.sn *= #sy daisukes.sn
scoreboard players operation #t daisukes.sn += @s daisukes.sn_y
execute store result storage daisukes:snake push.y int 1 run scoreboard players get #t daisukes.sn

scoreboard players operation #t daisukes.sn = #i daisukes.sn
scoreboard players operation #t daisukes.sn *= #az daisukes.sn
scoreboard players operation #t daisukes.sn *= #2 daisukes.sn
scoreboard players operation #t daisukes.sn += #k daisukes.sn
scoreboard players operation #t daisukes.sn /= #k2 daisukes.sn
scoreboard players operation #t daisukes.sn *= #sz daisukes.sn
scoreboard players operation #t daisukes.sn += @s daisukes.sn_z
execute store result storage daisukes:snake push.z int 1 run scoreboard players get #t daisukes.sn

function daisukes:modifiers/snake/push with storage daisukes:snake push
scoreboard players add #i daisukes.sn 1
execute if score #i daisukes.sn < #k daisukes.sn run function daisukes:modifiers/snake/step
