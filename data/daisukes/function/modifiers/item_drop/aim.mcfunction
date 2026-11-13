# Com a marker nou, als peus del jugador i amb el seu gir (es mata en acabar).
# Abans el marker es creava a 0 0 0 del mon: si aquell chunk no estava carregat no es podia trobar i
# n'hi quedaven d'oblidats. Ara es mesura relatiu als peus: (on va a parar) - (on era) = velocitat
execute store result score #x0 daisukes.math run data get entity @s Pos[0] 1000
execute store result score #y0 daisukes.math run data get entity @s Pos[1] 1000
execute store result score #z0 daisukes.math run data get entity @s Pos[2] 1000
tp @s ^ ^0.1 ^0.35
execute store result score #x1 daisukes.math run data get entity @s Pos[0] 1000
execute store result score #y1 daisukes.math run data get entity @s Pos[1] 1000
execute store result score #z1 daisukes.math run data get entity @s Pos[2] 1000
scoreboard players operation #x1 daisukes.math -= #x0 daisukes.math
scoreboard players operation #y1 daisukes.math -= #y0 daisukes.math
scoreboard players operation #z1 daisukes.math -= #z0 daisukes.math

execute store result entity @n[type=minecraft:item,tag=daisukes.slip] Motion[0] double 0.001 run scoreboard players get #x1 daisukes.math
execute store result entity @n[type=minecraft:item,tag=daisukes.slip] Motion[1] double 0.001 run scoreboard players get #y1 daisukes.math
execute store result entity @n[type=minecraft:item,tag=daisukes.slip] Motion[2] double 0.001 run scoreboard players get #z1 daisukes.math
kill @s
