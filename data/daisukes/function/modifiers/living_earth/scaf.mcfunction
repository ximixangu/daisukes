# Bastida sobre bastida: si s'ha clicat a sobre (el raig hi ha topat al 5 % de dalt), la nova va de costat, cap on mira
# el jugador; si no, a dalt de tot de la columna. Es l'ultima bastida en aquella direccio
execute align xyz positioned ~ ~0.95 ~ if entity @e[type=minecraft:marker,tag=daisukes.earth_hit,dx=0,dy=0,dz=0] run return run function daisukes:modifiers/living_earth/scaf_side
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:scaffolding run function daisukes:modifiers/living_earth/scaf_up
