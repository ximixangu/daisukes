# Recompensa de l'avancament victory/dragon_killed: com al jugador que ha fet el cop final al drac.
# La victoria no comenca aqui (som enmig del cop): la comenca victory/watch al tick seguent.
advancement revoke @s only daisukes:victory/dragon_killed
execute unless score #engine_active daisukes.engine matches 1 run return 0

tag @s add daisukes.dragon_slayer
scoreboard players set #slain daisukes.victory 1
