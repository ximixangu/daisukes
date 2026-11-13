# Com a ombra, des de la posicio del seu jugador
scoreboard players set #found daisukes.shadow 1
tag @s add daisukes.shadow_claimed

# Balla en cercle al voltant del jugador, a 4 blocs i mirant-lo (si no esta esperant per colpejar)
execute if entity @s[tag=!daisukes.shadow_armed] rotated as @s rotated ~182 0 run tp @s ^ ^ ^4 facing ~ ~1.5 ~
