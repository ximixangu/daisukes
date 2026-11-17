# Com al jugador que ha posat el bloc: on es (si no se n'han barrejat dos) i, des del marcador dels peus, a buscar-lo
scoreboard players operation #me daisukes.heavy = @s daisukes.heavy
data remove storage daisukes:heavy w
execute unless entity @s[tag=daisukes.heavy_many] run function daisukes:modifiers/heavy_blocks/where
advancement revoke @s only daisukes:modifiers/heavy_blocks/where
tag @s remove daisukes.heavy_placing
tag @s remove daisukes.heavy_many
execute as @e[type=minecraft:marker,tag=daisukes.heavy_look] if score @s daisukes.heavy = #me daisukes.heavy at @s run function daisukes:modifiers/heavy_blocks/look
