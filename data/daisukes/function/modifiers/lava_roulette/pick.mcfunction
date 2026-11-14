# Tria un bloc al voltant d'un jugador a l'atzar (encara que estigui saltant). Si al seu voltant no hi ha res que
# pugui sortir (neda, vola...), ho prova amb un altre. Deixa l'id del bloc a "new" (o no hi deixa res)
data remove storage daisukes:lava new
scoreboard players set #picking daisukes.lava 1
execute as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,sort=random,limit=1] at @s run function daisukes:modifiers/lava_roulette/find
execute unless data storage daisukes:lava new as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,sort=random,limit=1] at @s run function daisukes:modifiers/lava_roulette/find
scoreboard players set #picking daisukes.lava 0
