# Cada segon
scoreboard players set #sweep daisukes.anchor 0
# Restes d'ancorades velles (eren en chunks sense carregar) i encadenats que tornen (estaven desconnectats)
execute as @e[tag=daisukes.anchor,type=!minecraft:player] unless score @s daisukes.anchor = #event daisukes.anchor run function daisukes:modifiers/anchor/remove
execute as @a[tag=daisukes.anchor_p] unless score @s daisukes.anchor = #event daisukes.anchor run function daisukes:modifiers/anchor/restore
execute if score #phase daisukes.anchor matches 1..3 as @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] run effect give @s minecraft:resistance 2 4 true
execute if score #phase daisukes.anchor matches 3 run bossbar set daisukes:anchor players @a
# Objectes que encara brillen d'abans (cofre de l'ender, marcs, estaques, allays, o de tornada d'un contenidor)
execute as @a run function daisukes:modifiers/anchor/sweep_player with storage daisukes:anchor m
execute as @e[type=#daisukes:anchor/holders] run function daisukes:modifiers/anchor/sweep_holder
