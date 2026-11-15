execute if score #wait daisukes.anchor matches 1.. run return run scoreboard players remove #wait daisukes.anchor 1
# Toca ancora: un jugador a l'atzar que trepitgi terra (si pot ser, no el mateix de l'ultim cop). Si ara tothom
# salta, vola o neda, es torna a provar al tick seguent
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,tag=!daisukes.anchor_last,predicate=daisukes:anchor/grounded,sort=random,limit=1] at @s run return run function daisukes:modifiers/anchor/drop
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,predicate=daisukes:anchor/grounded,sort=random,limit=1] at @s run function daisukes:modifiers/anchor/drop
