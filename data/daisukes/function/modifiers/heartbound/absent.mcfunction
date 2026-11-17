# Com al jugador que torna (de morir, de creatiu, de desconnectar-se): el seu creaking (si encara hi era) s'esmicola
# i en surt un altre al cap de 5 s (o mes, si encara li faltava mes temps)
scoreboard players operation #o daisukes.heart = @s daisukes.heart
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] if score @s daisukes.heart = #o daisukes.heart at @s run function daisukes:modifiers/heartbound/crumble
tag @s remove daisukes.heart_bound
execute unless score @s daisukes.heart_t matches 100.. run scoreboard players set @s daisukes.heart_t 100
