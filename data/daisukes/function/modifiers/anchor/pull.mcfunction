# A mes de 12 blocs (o en una altra dimensio: perla, portal, explosio...) torna de cop sobre l'ancora
execute unless entity @e[type=minecraft:marker,tag=daisukes.anchor_root,distance=..12] run return run function daisukes:modifiers/anchor/snap_back
# Si no, 0,35 blocs per tick cap a l'ancora, en horitzontal (l'alcada ja la porta float). Com que l'encadenat pot rebre
# mal, mai el fica dins d'una paret: si al pas seguent no hi cap (space), la corda l'aguanta alla
execute facing entity @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.35 if function daisukes:modifiers/anchor/space run tp @s ~ ~ ~
