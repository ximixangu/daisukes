# Com al jugador amb eco, cada 2 ticks: el marca (perque no l'escombrin), el fa parpellejar l'ultim segon i hi
# estira el fil (si es a la mateixa dimensio i a menys de 32 blocs)
scoreboard players operation #id daisukes.ek = @s daisukes.ek_id
execute as @e[type=minecraft:mannequin,tag=daisukes.ek] if score @s daisukes.ek_id = #id daisukes.ek run tag @s add daisukes.ek_this
tag @e[type=minecraft:mannequin,tag=daisukes.ek_this] add daisukes.ek_ok
execute if score @s daisukes.ek_t matches ..20 run function daisukes:modifiers/ekko/echo/blink
scoreboard players set #n daisukes.ek 0
execute if score #tether daisukes.ek matches 1 if entity @e[type=minecraft:mannequin,tag=daisukes.ek_this,distance=1..32] facing entity @n[type=minecraft:mannequin,tag=daisukes.ek_this] feet positioned ~ ~0.75 ~ positioned ^ ^ ^0.75 run function daisukes:modifiers/ekko/echo/thread
tag @e[type=minecraft:mannequin,tag=daisukes.ek_this] remove daisukes.ek_this
