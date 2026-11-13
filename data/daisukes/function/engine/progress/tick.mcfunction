# Temps de partida en ticks (nomes avanca mentre el motor esta actiu)
scoreboard players add #elapsed daisukes.engine 1

# Primer jugador que entra al Nether / a l'End
execute if score #nether_reached daisukes.engine matches 0 as @a at @s if dimension minecraft:the_nether run function daisukes:engine/progress/reach_nether
execute if score #end_reached daisukes.engine matches 0 as @a at @s if dimension minecraft:the_end run function daisukes:engine/progress/reach_end

# Interval de canvi i nombre de modificadors: es recalculen cada tick a partir de la configuracio
function daisukes:engine/progress/update_interval
function daisukes:engine/progress/update_count
