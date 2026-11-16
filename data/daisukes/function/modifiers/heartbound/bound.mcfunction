# Com al jugador lligat (cada segon). El seu cor, encara a prop? (si no, se n'enterra un altre)
scoreboard players set #has daisukes.heart 0
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] if score @s daisukes.heart = #me daisukes.heart at @s positioned ~ ~0.505 ~ run function daisukes:modifiers/heartbound/core_check
execute if score #has daisukes.heart matches 0 run function daisukes:modifiers/heartbound/bury
# I el seu creaking? (si no, en surt un altre darrere seu)
scoreboard players set #near daisukes.heart 0
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] if score @s daisukes.heart = #me daisukes.heart run function daisukes:modifiers/heartbound/creak_check
execute if score #near daisukes.heart matches 0 run function daisukes:modifiers/heartbound/haunt
