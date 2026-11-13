# Jugadors que acaben d'entrar al servidor (el primer cop, o tornant)
execute as @a unless score @s daisukes.left matches 0 run function daisukes:core/player_join

# Sense ningu connectat no avanca res: ni el temps de partida ni els canvis de modificador
# (si el servidor no es pausa sol, en tornar no hi hauria 10 modificadors de cop)
execute unless entity @a run return 0

execute if score #engine_active daisukes.engine matches 1 run function daisukes:engine/tick

# Cada segon: el que hagin deixat els modificadors que ja no estan actius (core/leftovers)
scoreboard players add #leftovers daisukes.timer 1
execute if score #leftovers daisukes.timer matches 20.. run function daisukes:core/leftovers
