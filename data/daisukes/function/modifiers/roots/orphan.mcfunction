# Com al centre d'una agafada: si el seu jugador ja no juga, les seves arrels es trenquen i s'enfonsen
scoreboard players operation #o daisukes.roots = @s daisukes.roots
scoreboard players set #own daisukes.roots 0
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] if score @s daisukes.roots = #o daisukes.roots run scoreboard players set #own daisukes.roots 1
execute if score #own daisukes.roots matches 1 run return 0
execute as @e[tag=daisukes.roots,type=!minecraft:player] if score @s daisukes.roots = #o daisukes.roots run tag @s add daisukes.roots_mine
execute as @e[type=minecraft:block_display,tag=daisukes.roots_rope,tag=daisukes.roots_mine,tag=!daisukes.roots_dying] at @s run function daisukes:modifiers/roots/snap
execute as @e[type=minecraft:block_display,tag=daisukes.roots_tuft,tag=daisukes.roots_mine,tag=!daisukes.roots_dying] run function daisukes:modifiers/roots/sink
kill @e[type=minecraft:interaction,tag=daisukes.roots_cut,tag=daisukes.roots_mine]
kill @e[type=minecraft:marker,tag=daisukes.roots_center,tag=daisukes.roots_mine]
tag @e[tag=daisukes.roots_mine] remove daisukes.roots_mine
