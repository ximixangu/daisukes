# Rellotge: el temps del mon (el darrer salt de cada mob es compara amb aquest)
execute store result score #now daisukes.em run time query gametime

# Cops de jugador des del tick passat (on_player_hit): salten ara
execute if score #hits daisukes.em matches 1 run function daisukes:modifiers/ender_mobs/hits

# Sense mal de qualsevol tipus ni salts a l'atzar no cal vigilar cap mob
execute if score #watch daisukes.em matches 0 run return 0

# Cada mob vigilat es mira un tick de cada 8, segons la fase que li va tocar (track). Mes espaiat es perdrien cops:
# HurtTime nomes dura 10 ticks
scoreboard players operation #ph daisukes.em = #now daisukes.em
scoreboard players operation #ph daisukes.em %= #8 daisukes.em
execute if score #ph daisukes.em matches 0 as @e[tag=daisukes.em_0] at @s run function daisukes:modifiers/ender_mobs/check
execute if score #ph daisukes.em matches 1 as @e[tag=daisukes.em_1] at @s run function daisukes:modifiers/ender_mobs/check
execute if score #ph daisukes.em matches 2 as @e[tag=daisukes.em_2] at @s run function daisukes:modifiers/ender_mobs/check
execute if score #ph daisukes.em matches 3 as @e[tag=daisukes.em_3] at @s run function daisukes:modifiers/ender_mobs/check
execute if score #ph daisukes.em matches 4 as @e[tag=daisukes.em_4] at @s run function daisukes:modifiers/ender_mobs/check
execute if score #ph daisukes.em matches 5 as @e[tag=daisukes.em_5] at @s run function daisukes:modifiers/ender_mobs/check
execute if score #ph daisukes.em matches 6 as @e[tag=daisukes.em_6] at @s run function daisukes:modifiers/ender_mobs/check
execute if score #ph daisukes.em matches 7 as @e[tag=daisukes.em_7] at @s run function daisukes:modifiers/ender_mobs/check

# Mobs nous a prop dels jugadors, cada 8 ticks; i, cada 2 s, fora els que s'han allunyat
execute if score #ph daisukes.em matches 4 run function daisukes:modifiers/ender_mobs/near with storage daisukes:ender_mobs config
scoreboard players operation #t daisukes.em = #now daisukes.em
scoreboard players operation #t daisukes.em %= #40 daisukes.em
execute if score #t daisukes.em matches 20 run function daisukes:modifiers/ender_mobs/tidy with storage daisukes:ender_mobs config
