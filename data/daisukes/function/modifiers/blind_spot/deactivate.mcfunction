# Totes les metxes s'apaguen, sense esclatar, i fora tot
execute as @e[type=minecraft:marker,tag=daisukes.bspot] at @s run function daisukes:modifiers/blind_spot/fizzle
kill @e[type=minecraft:block_display,tag=daisukes.bspot_pop]
kill @e[type=minecraft:marker,tag=daisukes.bspot_probe]
scoreboard objectives remove daisukes.bspot
scoreboard objectives remove daisukes.bspot_fx
