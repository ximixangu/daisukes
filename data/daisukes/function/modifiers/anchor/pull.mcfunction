# A mes de 12 blocs (o en una altra dimensio: perla, portal, explosio...) torna de cop sobre l'ancora
execute unless entity @e[type=minecraft:marker,tag=daisukes.anchor_root,distance=..12] run return run function daisukes:modifiers/anchor/snap_back
# Si no, 0,35 blocs per tick cap a l'ancora, en horitzontal (l'alcada ja la porta float)
execute facing entity @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^0.35
