# Cada jugador amb la seva ombra
execute as @e[type=player,gamemode=!spectator] at @s run function daisukes:modifiers/shadow/player

# Les ombres que ningu ha reclamat (el jugador ha marxat, ha mort o es massa lluny) desapareixen
execute as @e[type=mannequin,tag=daisukes.shadow,tag=!daisukes.shadow_claimed] at @s run function daisukes:modifiers/shadow/vanish
tag @e[type=mannequin,tag=daisukes.shadow_claimed] remove daisukes.shadow_claimed

# Metronom: un temps cada 10 ticks (120 BPM)
scoreboard players add #tick daisukes.shadow 1
execute if score #tick daisukes.shadow matches 10.. run function daisukes:modifiers/shadow/beat

# Aspecte: aura fosca, s'aixequen despres de cada temps i anell de foc on colpejaran
execute as @e[type=mannequin,tag=daisukes.shadow] at @s run particle minecraft:squid_ink ~ ~1 ~ 0.2 0.5 0.2 0 1
execute if score #tick daisukes.shadow matches 4 as @e[type=mannequin,tag=daisukes.shadow] run data merge entity @s {pose: "standing"}
execute as @e[type=mannequin,tag=daisukes.shadow_armed] at @s run function daisukes:modifiers/shadow/ring
