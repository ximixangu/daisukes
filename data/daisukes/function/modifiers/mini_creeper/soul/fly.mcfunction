# Com a l'anima, empaitant el jugador amb l'etiqueta soul_me
tag @s add daisukes.soul_seen
scoreboard players add @s daisukes.soul 1
execute if entity @s[tag=daisukes.soul_hunt] run function daisukes:modifiers/mini_creeper/soul/hunt
execute if entity @s[tag=daisukes.soul_strike] run function daisukes:modifiers/mini_creeper/soul/strike
# Mentre es llanca, si toca un jugador (el seu o qualsevol altre), esclata
execute if entity @s[tag=daisukes.soul_strike] if score @s daisukes.soul matches 12.. at @s positioned ~ ~-0.55 ~ if entity @e[type=minecraft:player,gamemode=!spectator,distance=..1.3] at @s run function daisukes:modifiers/mini_creeper/soul/burst
