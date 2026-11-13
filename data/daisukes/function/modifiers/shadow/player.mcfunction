# Com a jugador. Cada jugador te un numero, i la seva ombra porta el mateix.
execute unless score @s daisukes.shadow matches 1.. store result score @s daisukes.shadow run scoreboard players add #ids daisukes.shadow 1
scoreboard players operation #me daisukes.shadow = @s daisukes.shadow

# Busca la seva ombra a prop; si no hi es, apareix
scoreboard players set #found daisukes.shadow 0
execute as @e[type=mannequin,tag=daisukes.shadow,distance=..12] if score @s daisukes.shadow = #me daisukes.shadow run function daisukes:modifiers/shadow/claim
execute if score #found daisukes.shadow matches 0 run function daisukes:modifiers/shadow/spawn
