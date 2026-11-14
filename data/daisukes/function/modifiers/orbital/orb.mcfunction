# Com a l'orba (la hitbox), des dels ulls del seu amo
scoreboard players add @s daisukes.orb_age 1
# Picada (clic esquerre o dret, de qualsevol jugador)
execute if data entity @s attack run function daisukes:modifiers/orbital/hit
execute if data entity @s interaction run function daisukes:modifiers/orbital/hit
execute if entity @s[tag=daisukes.orb_dead] run return run kill @s
# S'ha acabat el fusible: esclata
execute if score @s daisukes.orb_age >= @s daisukes.orb_life run return run function daisukes:modifiers/orbital/boom
function daisukes:modifiers/orbital/fuse
function daisukes:modifiers/orbital/move
