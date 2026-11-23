# Mobs tocats per un jugador des del tick passat (on_player_hit): salten ara, sense esperar el #cooldown
scoreboard players set #hits daisukes.em 0
scoreboard players set #force daisukes.em 1
execute as @e[tag=daisukes.em_hit] at @s run function daisukes:modifiers/ender_mobs/blink
tag @e[tag=daisukes.em_hit] remove daisukes.em_hit
