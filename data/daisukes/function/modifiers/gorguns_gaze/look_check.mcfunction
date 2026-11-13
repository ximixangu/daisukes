# Com el jugador. Esta mirant la mirada si l'angle entre on mira i la direccio cap als ulls es
# de menys de ~35 graus: es compara el punt a 1 bloc davant dels seus ulls amb el punt a 1 bloc
# en direccio als ulls de la mirada (distancia entre tots dos < 0.6). Es veu a traves dels blocs,
# per tant no cal visio directa.
execute anchored eyes facing entity @e[type=minecraft:text_display,tag=daisukes.gorgun_now,distance=..50,limit=1] feet positioned ^ ^ ^1 summon minecraft:marker run tag @s add daisukes.gorgun_probe
execute anchored eyes positioned ^ ^ ^1 if entity @e[type=minecraft:marker,tag=daisukes.gorgun_probe,distance=..0.85] run function daisukes:modifiers/gorguns_gaze/petrify
kill @e[type=minecraft:marker,tag=daisukes.gorgun_probe,distance=..4]
