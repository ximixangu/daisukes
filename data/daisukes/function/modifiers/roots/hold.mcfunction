# Com al jugador lligat, amb les seves peces marcades. Massa lluny del seu centre (perla, una altra dimensio...): fora totes de cop
execute unless entity @e[type=minecraft:marker,tag=daisukes.roots_center,tag=daisukes.roots_mine,distance=..4] run return run function daisukes:modifiers/roots/snap_all
# Si no hi ha manera (tancat en un forat...), als 15 s les arrels es cansen i el deixen anar
scoreboard players add @s daisukes.roots_n 1
execute if score @s daisukes.roots_n matches 300.. run return run function daisukes:modifiers/roots/snap_all
# Cada corda mira els peus i fa la llargada que toca. La mes estirada mana
scoreboard players set #kmax daisukes.roots 0
execute as @e[type=minecraft:block_display,tag=daisukes.roots_rope,tag=daisukes.roots_mine,tag=!daisukes.roots_dying] at @s run function daisukes:modifiers/roots/rope_tick
execute if score #kmax daisukes.roots matches 0..7 run scoreboard players set #b daisukes.roots 0
execute if score #kmax daisukes.roots matches 8..9 run scoreboard players set #b daisukes.roots 1
execute if score #kmax daisukes.roots matches 10..11 run scoreboard players set #b daisukes.roots 2
execute if score #kmax daisukes.roots matches 12..12 run scoreboard players set #b daisukes.roots 3
execute if score #kmax daisukes.roots matches 13..17 run scoreboard players set #b daisukes.roots 4
execute unless score @s daisukes.roots_v = #b daisukes.roots run function daisukes:modifiers/roots/speed
# Estirant la mes tensa: grinyola (cada cop mes agut) i, quan porta #tough ticks, es trenca (si va recte, despres la seguent)
execute if score #kmax daisukes.roots matches 13.. run scoreboard players add @s daisukes.roots_s 1
execute unless score #kmax daisukes.roots matches 13.. run scoreboard players set @s daisukes.roots_s 0
scoreboard players operation #q daisukes.roots = @s daisukes.roots_s
scoreboard players operation #q daisukes.roots %= #5 daisukes.roots
execute if score @s daisukes.roots_s matches 1.. if score #q daisukes.roots matches 1 run function daisukes:modifiers/roots/creak
execute if score #kmax daisukes.roots matches 17 run scoreboard players operation @s daisukes.roots_s = #tough daisukes.roots
execute if score @s daisukes.roots_s >= #tough daisukes.roots as @e[type=minecraft:block_display,tag=daisukes.roots_rope,tag=daisukes.roots_mine,tag=!daisukes.roots_dying,sort=furthest,limit=1] at @s run function daisukes:modifiers/roots/snap
execute if score @s daisukes.roots_s >= #tough daisukes.roots run scoreboard players set @s daisukes.roots_s 0
# El company que talla: la interaccio va amb els peus
tp @e[type=minecraft:interaction,tag=daisukes.roots_cut,tag=daisukes.roots_mine] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=daisukes.roots_cut,tag=daisukes.roots_mine] if data entity @s attack run function daisukes:modifiers/roots/chop
execute unless entity @e[type=minecraft:block_display,tag=daisukes.roots_rope,tag=daisukes.roots_mine,tag=!daisukes.roots_dying] run function daisukes:modifiers/roots/free
