# Com a l'anima que surt del cos: en linia recta i frenant (uns 5 blocs en 0,65 s). Si n'han sortit unes
# quantes, les darreres esperen dins del cos (temps negatiu)
scoreboard players add @s daisukes.soul 1
execute if score @s daisukes.soul matches ..0 run return 0
execute if score @s daisukes.soul matches 1 run function daisukes:modifiers/soul_escape/soul/depart
execute if score @s daisukes.soul matches ..4 run tp @s ^ ^ ^0.7
execute if score @s daisukes.soul matches 5..7 run tp @s ^ ^ ^0.45
execute if score @s daisukes.soul matches 8..10 run tp @s ^ ^ ^0.28
execute if score @s daisukes.soul matches 11.. run tp @s ^ ^ ^0.14
particle minecraft:soul_fire_flame ~ ~0.35 ~ 0.08 0.08 0.08 0.01 2 force
execute if score @s daisukes.soul matches ..12 run return 0
# Ja s'ha aturat: si en sobrava, s'esvaeix; si no, comenca a voltar el seu jugador
execute if entity @s[tag=daisukes.soul_free] run return run function daisukes:modifiers/soul_escape/soul/fizzle
function daisukes:modifiers/soul_escape/soul/hunt_start
