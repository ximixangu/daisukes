# Blocs posats que encara no s'han buscat (l'avenc used no ha saltat: nenufars...): ara, abans que es mogui el cursor.
# Si en queda algun marcador, el jugador ja no hi es
execute as @a[tag=daisukes.earth_placing] run function daisukes:modifiers/living_earth/finish
kill @e[type=minecraft:marker,tag=daisukes.earth_pend]

# Cada jugador que pot picar: el bloc que mirava, l'ha trencat? I que mira ara?
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/living_earth/look

# Els forats esperen i tornen negres; els blocs posats tornen a l'amo
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_wait] at @s run function daisukes:modifiers/living_earth/hole
execute as @e[type=minecraft:marker,tag=daisukes.earth_placed] at @s run function daisukes:modifiers/living_earth/held

scoreboard players add #sec daisukes.earth 1
execute if score #sec daisukes.earth matches 10 as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=!daisukes.earth_ghost] at @s if entity @a[distance=..16] run function daisukes:modifiers/living_earth/scar
execute if score #sec daisukes.earth matches 20.. run function daisukes:modifiers/living_earth/second
