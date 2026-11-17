# Al bloc que es mira (o que s'acaba de posar, #mode 1)
execute if score #mode daisukes.earth matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run return run function daisukes:modifiers/living_earth/place_hit
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=!daisukes.earth_ghost,distance=..0.01] unless block ~ ~ ~ #minecraft:leaves run scoreboard players set #tough daisukes.earth 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=daisukes.earth_cursor] if score @s daisukes.earth = #me daisukes.earth run function daisukes:modifiers/living_earth/aim_cursor
