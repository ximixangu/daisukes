# Com a cada jugador que pot picar. Si es el primer cop, un numero
execute unless score @s daisukes.earth matches 1.. run function daisukes:modifiers/living_earth/join
scoreboard players operation #me daisukes.earth = @s daisukes.earth

# Un bloc negre a prop que ja no hi es: l'acaben de trencar (encara que cap cursor ho hagi vist). No dona res i torna a
# ser un forat
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=!daisukes.earth_ghost,distance=..12] at @s if block ~ ~ ~ #daisukes:living_earth/clear run function daisukes:modifiers/living_earth/gone

# El bloc que mirava el tick d'abans: si ja no hi es, l'acaba de trencar (si el cursor es lluny, ha canviat de dimensio o
# s'ha teletransportat: aquell bloc no l'ha trencat ell)
scoreboard players set #has daisukes.earth 0
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor] if score @s daisukes.earth = #me daisukes.earth run scoreboard players set #has daisukes.earth 1
execute if score #has daisukes.earth matches 0 run function daisukes:modifiers/living_earth/new_cursor
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..16] if score @s daisukes.earth = #me daisukes.earth at @s run function daisukes:modifiers/living_earth/check

# El que mira ara (fins a 5 blocs): el cursor hi va i en guarda una copia. Si es negre (i no son fulles), costa el doble
scoreboard players set #mode daisukes.earth 0
scoreboard players set #tough daisukes.earth 0
scoreboard players set #step daisukes.earth 0
execute anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/living_earth/ray
execute if score #tough daisukes.earth matches 1 unless entity @s[tag=daisukes.earth_tough] run function daisukes:modifiers/living_earth/tough_on
execute if score #tough daisukes.earth matches 0 if entity @s[tag=daisukes.earth_tough] run function daisukes:modifiers/living_earth/tough_off
