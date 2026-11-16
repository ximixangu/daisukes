# Com al cursor, al centre del bloc que mirava (si mirava una cosa que es fa servir, no compta)
execute unless score @s daisukes.earth_t matches 1..2 run return 0
# Un bloc negre que ha canviat (una carabassa tallada, un tronc pelat, terra llaurada...): torna a ser el que era, i fora
# el que n'hagi sortit
execute unless block ~ ~ ~ #daisukes:living_earth/clear as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=!daisukes.earth_ghost,distance=..0.5] run function daisukes:modifiers/living_earth/fix_here
execute unless block ~ ~ ~ #daisukes:living_earth/clear run return 0
scoreboard players set @s daisukes.earth_t 0
# Era un bloc negre: no dona res i torna a ser un forat
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,distance=..0.5] run return run function daisukes:modifiers/living_earth/gone
execute if entity @e[type=minecraft:block_display,tag=daisukes.earth_black,distance=..0.5] run return 0
# Un bloc que s'havia posat i encara no havia tornat: qui el trenca se'l queda (i no torna negre)
execute if entity @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.5] run return run function daisukes:modifiers/living_earth/broke_placed
# Sorra o grava que ha caigut: no l'han trencat, s'ha mogut (el bloc que cau surt just on era)
execute positioned ~ ~-0.5 ~ if entity @e[type=minecraft:falling_block,distance=..0.5] run return 0
execute if score #holes daisukes.earth matches 400.. run return 0
function daisukes:modifiers/living_earth/new_hole with entity @s data
