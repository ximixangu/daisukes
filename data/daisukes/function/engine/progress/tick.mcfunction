# Temps de partida en ticks (nomes avanca mentre el motor esta actiu)
scoreboard players add #elapsed daisukes.engine 1

# Primer jugador que entra al Nether / a l'End
execute if score #nether_reached daisukes.engine matches 0 as @a at @s if dimension minecraft:the_nether run function daisukes:engine/progress/reach_nether
execute if score #end_reached daisukes.engine matches 0 as @a at @s if dimension minecraft:the_end run function daisukes:engine/progress/reach_end

# Fites de la partida, amb avancaments propis i amagats amb el mateix criteri que els de Minecraft:
#   vara de blaze (Into Fire), bastio (Those Were the Days) i fortalesa (Eye Spy)
execute unless score #blaze_reached daisukes.engine matches 1 as @a[advancements={daisukes:progress/blaze_rod=true}] run function daisukes:engine/progress/reach_blaze
execute unless score #bastion_reached daisukes.engine matches 1 as @a[advancements={daisukes:progress/bastion=true}] run function daisukes:engine/progress/reach_bastion
execute unless score #stronghold_reached daisukes.engine matches 1 as @a[advancements={daisukes:progress/stronghold=true}] run function daisukes:engine/progress/reach_stronghold

# Vara de blaze i bastio, en qualsevol ordre: fase 3 (i d'aqui compta el temps de la fase 4)
execute unless score #nether_goals daisukes.engine matches 1 if score #blaze_reached daisukes.engine matches 1 if score #bastion_reached daisukes.engine matches 1 run function daisukes:engine/progress/reach_nether_goals

# Interval de canvi i nombre de modificadors: es recalculen cada tick a partir de la configuracio
function daisukes:engine/progress/update_interval
function daisukes:engine/progress/update_count
