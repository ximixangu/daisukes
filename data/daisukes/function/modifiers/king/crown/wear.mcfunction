# Com a corona que arriba al cap de qui ha mort el Rei (king_dest): la porta fins que s'acabi l'interregne, 2 blocs
# per sobre dels ulls (crown/worn)
tag @s remove daisukes.king_fly
tag @s remove daisukes.king_to_wearer
tag @s add daisukes.king_worn
execute at @e[tag=daisukes.king_dest,limit=1] anchored eyes positioned ^ ^ ^ run tp @s ~ ~2 ~
execute at @e[tag=daisukes.king_dest,limit=1] run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 1 1.1
execute at @e[tag=daisukes.king_dest,limit=1] anchored eyes positioned ^ ^ ^ run particle minecraft:wax_on ~ ~2.2 ~ 0.3 0.2 0.3 0 12
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest
