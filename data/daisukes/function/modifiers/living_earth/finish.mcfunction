# Com al jugador que ha posat el bloc: on es (si no se n'han barrejat dos) i, des del marcador dels peus, a buscar-lo
scoreboard players operation #me daisukes.earth = @s daisukes.earth
data remove storage daisukes:earth w
execute unless entity @s[tag=daisukes.earth_many] run function daisukes:modifiers/living_earth/where
advancement revoke @s only daisukes:living_earth/where
tag @s remove daisukes.earth_placing
tag @s remove daisukes.earth_many
execute as @e[type=minecraft:marker,tag=daisukes.earth_pend] if score @s daisukes.earth = #me daisukes.earth at @s run function daisukes:modifiers/living_earth/pend
