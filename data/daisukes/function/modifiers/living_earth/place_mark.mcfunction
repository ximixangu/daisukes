# Al centre del primer bloc que troba el raig des dels ulls de qui acaba de posar un bloc (el servidor sap on mira amb un
# tick de retard: pot ser el bloc nou o no). Nomes es marca un bloc que segur que es nou
scoreboard players set #ok daisukes.earth 0
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01] if score @s daisukes.earth = #me daisukes.earth run scoreboard players operation #ok daisukes.earth = @s daisukes.earth_t
# Es el bloc que mirava: si era herba (reemplacable) i ara hi ha un bloc, es aquest
execute if score #ok daisukes.earth matches 2 unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable run return run function daisukes:modifiers/living_earth/mark
# Es el bloc que mirava: una bastida, un bloc que s'hi ha afegit (llosa sobre llosa...), o el nou es al costat
execute if score #ok daisukes.earth matches 1 run return run function daisukes:modifiers/living_earth/place_same
# Es un del costat del que mirava, que el tick d'abans era buit: es aquest
execute unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable positioned ~-1 ~ ~ as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01,tag=daisukes.earth_fe,scores={daisukes.earth_t=1..3}] if score @s daisukes.earth = #me daisukes.earth positioned ~1 ~ ~ run return run function daisukes:modifiers/living_earth/mark
execute unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable positioned ~1 ~ ~ as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01,tag=daisukes.earth_fw,scores={daisukes.earth_t=1..3}] if score @s daisukes.earth = #me daisukes.earth positioned ~-1 ~ ~ run return run function daisukes:modifiers/living_earth/mark
execute unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable positioned ~ ~-1 ~ as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01,tag=daisukes.earth_fu,scores={daisukes.earth_t=1..3}] if score @s daisukes.earth = #me daisukes.earth positioned ~ ~1 ~ run return run function daisukes:modifiers/living_earth/mark
execute unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable positioned ~ ~1 ~ as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01,tag=daisukes.earth_fd,scores={daisukes.earth_t=1..3}] if score @s daisukes.earth = #me daisukes.earth positioned ~ ~-1 ~ run return run function daisukes:modifiers/living_earth/mark
execute unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable positioned ~ ~ ~-1 as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01,tag=daisukes.earth_fs,scores={daisukes.earth_t=1..3}] if score @s daisukes.earth = #me daisukes.earth positioned ~ ~ ~1 run return run function daisukes:modifiers/living_earth/mark
execute unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable positioned ~ ~ ~1 as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01,tag=daisukes.earth_fn,scores={daisukes.earth_t=1..3}] if score @s daisukes.earth = #me daisukes.earth positioned ~ ~ ~-1 run return run function daisukes:modifiers/living_earth/mark
# Si no, el bloc nou es al costat del que mirava
function daisukes:modifiers/living_earth/scan_me
