scoreboard players set #sec daisukes.heart 0
# Creakings i cors d'algu que ja no hi es o no esta lligat (mort, desconnectat, en creatiu...) o d'abans: fora
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] at @s run function daisukes:modifiers/heartbound/owner
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] at @s positioned ~ ~0.505 ~ run function daisukes:modifiers/heartbound/owner
