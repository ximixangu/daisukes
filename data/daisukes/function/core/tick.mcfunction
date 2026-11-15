# Jugadors que acaben d'entrar al servidor (el primer cop, o tornant)
execute as @a unless score @s daisukes.left matches 0 run function daisukes:core/player_join

# Sense ningu connectat no avanca res: ni el temps de partida ni els canvis de modificador
# (si el servidor no es pausa sol, en tornar no hi hauria 10 modificadors de cop)
execute unless entity @a run return 0

# Repte sense comencar: explicacio al xat 2 s despres de carregar, quan ja hi ha algu (core/load, core/welcome)
execute if score #welcome daisukes.timer matches 1 run function daisukes:core/welcome
execute if score #welcome daisukes.timer matches 1.. run scoreboard players remove #welcome daisukes.timer 1

execute if score #engine_active daisukes.engine matches 1 run function daisukes:engine/tick

# Servidor amb Fahare: si algu es al limbo, s'esta creant un mon nou -> partida nova sense comencar (core/world_reset).
# Va despres d'engine/tick perque la mort que ha provocat el reinici encara tregui el YOU DIED.
# Sense Fahare la dimensio no existeix i la linia falla sense fer res
execute as @a at @s if dimension fahare:limbo run function daisukes:core/world_reset

# Les morts nomes compten amb el repte en marxa (engine/tick): despres de mirar-ho es tornen a 0
scoreboard players reset * daisukes.deaths

# Cada segon: el que hagin deixat els modificadors que ja no estan actius (core/leftovers)
scoreboard players add #leftovers daisukes.timer 1
execute if score #leftovers daisukes.timer matches 20.. run function daisukes:core/leftovers
