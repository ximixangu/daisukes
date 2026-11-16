# Com a cada jugador que pot jugar (viu, en supervivencia o aventura)
execute unless score @s daisukes.roots matches 1.. run function daisukes:modifiers/roots/join
scoreboard players operation #me daisukes.roots = @s daisukes.roots
# No el veiem des de fa mes d'un tick (ha mort, era en creatiu o espectador, s'havia desconnectat): lliure,
# i el que hagi caminat mentrestant no compta
scoreboard players operation #gap daisukes.roots = #time daisukes.roots
scoreboard players operation #gap daisukes.roots -= @s daisukes.roots_z
scoreboard players operation @s daisukes.roots_z = #time daisukes.roots
execute if score #gap daisukes.roots matches 2.. run function daisukes:modifiers/roots/back
function daisukes:modifiers/roots/moving
execute if score @s daisukes.roots_p matches 0 run return 0
scoreboard players add #busy daisukes.roots 1
# Les seves peces
tag @s add daisukes.roots_me
execute as @e[tag=daisukes.roots,type=!minecraft:player] if score @s daisukes.roots = #me daisukes.roots run tag @s add daisukes.roots_mine
# (al reves, perque una cosa nova es vegi un tick abans d'animar-se)
execute if score @s daisukes.roots_p matches 2 run function daisukes:modifiers/roots/hold
execute if score @s daisukes.roots_p matches 1 run function daisukes:modifiers/roots/grab
tag @e[tag=daisukes.roots_mine] remove daisukes.roots_mine
tag @s remove daisukes.roots_me
