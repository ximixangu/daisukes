# Com a cada jugador viu (no espectador), als peus: les animes que l'empaiten volen al seu voltant
execute unless score @s daisukes.soul_id matches 1.. run return 0
scoreboard players operation #me daisukes.soul = @s daisukes.soul_id
tag @s add daisukes.soul_me
# Nomes una alhora es llanca contra ell: les altres esperen el seu torn voltant
scoreboard players set #busy daisukes.soul 0
execute as @e[type=minecraft:interaction,tag=daisukes.soul_strike,distance=..96] if score @s daisukes.soul_id = #me daisukes.soul run scoreboard players add #busy daisukes.soul 1
execute as @e[type=minecraft:interaction,tag=daisukes.soul,tag=!daisukes.soul_launch,distance=..96] if score @s daisukes.soul_id = #me daisukes.soul at @s run function daisukes:modifiers/soul_escape/soul/fly
tag @s remove daisukes.soul_me
