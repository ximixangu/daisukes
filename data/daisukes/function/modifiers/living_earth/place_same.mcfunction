# Al centre del bloc que ja mirava, com al jugador. Bastida: busca la nova
execute if block ~ ~ ~ minecraft:scaffolding run return run function daisukes:modifiers/living_earth/scaf
# Si el bloc es igual que la copia del tick d'abans, no es aquest (ha girat de pressa): res. Si ha canviat, s'hi ha afegit
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01] if score @s daisukes.earth = #me daisukes.earth run tag @s add daisukes.earth_mine
function daisukes:modifiers/living_earth/same_cmp with entity @e[type=minecraft:marker,tag=daisukes.earth_mine,limit=1] data
tag @e[type=minecraft:marker,tag=daisukes.earth_mine] remove daisukes.earth_mine
execute if score #diff daisukes.earth matches 1 run return run function daisukes:modifiers/living_earth/mark_add
# Res ha canviat aqui: el raig ha anat a parar al bloc d'abans, i el nou es al costat
function daisukes:modifiers/living_earth/scan_me
