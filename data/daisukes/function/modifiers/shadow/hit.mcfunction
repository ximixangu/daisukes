# Com a ombra: ona expansiva i notes de colors
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:note ~ ~1 ~ 1 0.5 1 1 12 force
playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 1 1.2

# Qui sigui a menys de 1.5 blocs rep 2 cors en dificultat normal (travessa armadura i escut) i surt empes
execute as @e[type=player,gamemode=!spectator,distance=..1.5] run damage @s 4 minecraft:sonic_boom at ~ ~ ~

tag @s remove daisukes.shadow_armed
