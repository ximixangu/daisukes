# Com al jugador lligat (cada segon): el seu creaking hi es? (si no, en surt un altre darrere seu)
scoreboard players set #near daisukes.heart 0
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] if score @s daisukes.heart = #me daisukes.heart run function daisukes:modifiers/heartbound/creak_check
execute if score #near daisukes.heart matches 0 run function daisukes:modifiers/heartbound/haunt
