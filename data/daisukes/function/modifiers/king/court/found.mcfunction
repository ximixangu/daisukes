# Com a jugador, cada segon. Si no hi ha cap corona a menys de 48 blocs i hi ha algun monstre a prop (24 blocs a
# cada costat, 8 amunt i avall), se'n tria un a l'atzar i li baixa una corona del cel.
# Els que porten un altre monstre a sobre (aranya amb esquelet, devastador amb genets...) no: la corona quedaria
# enmig del genet, que pot ser Rei ell mateix. Els que cremen tampoc: el sol se l'enduria de seguida.
# (@e ja no tria els que s'estan morint)
execute if entity @e[type=minecraft:text_display,tag=daisukes.king_crown,distance=..48] run return 0
execute positioned ~-24 ~-8 ~-24 run tag @e[type=#daisukes:king/court,dx=48,dy=16,dz=48,tag=!daisukes.king,tag=!daisukes.king_heir,tag=!daisukes.king_reject,predicate=!daisukes:king/carrier,predicate=!daisukes:king/burning,sort=random,limit=1] add daisukes.king_pick
execute unless entity @e[tag=daisukes.king_pick] run return 0

scoreboard players add #ids daisukes.king 1
scoreboard players operation #cid daisukes.king_id = #ids daisukes.king
execute as @e[tag=daisukes.king_pick] at @s run function daisukes:modifiers/king/court/descend
