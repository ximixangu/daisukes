# Cada jugador que pot picar: el bloc que mirava, ha desaparegut? I que mira ara?
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/living_earth/look

# Els forats esperen (els ultims ticks, pampallugueja la silueta) i els blocs posats tornen a l'inventari
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_wait] at @s run function daisukes:modifiers/living_earth/hole
execute as @e[type=minecraft:marker,tag=daisukes.earth_placed] at @s run function daisukes:modifiers/living_earth/held

scoreboard players add #sec daisukes.earth 1
execute if score #sec daisukes.earth matches 20.. run function daisukes:modifiers/living_earth/second
