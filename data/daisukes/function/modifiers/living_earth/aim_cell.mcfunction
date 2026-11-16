# Al centre del primer bloc que troba el raig. Si es per posar, es el bloc que s'acaba de posar
execute if score #mode daisukes.earth matches 1 run return run function daisukes:modifiers/living_earth/place_mark
# Negre (i no fulles, que es trenquen igual de rapid): costa el doble
execute if entity @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves run scoreboard players set #tough daisukes.earth 1
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor] if score @s daisukes.earth = #me daisukes.earth run function daisukes:modifiers/living_earth/aim_cursor
