# Els creakings s'esmicolen, fora els scoreboards (i, si n'hi ha, els cors de la versio anterior tornen a ser el bloc que eren)
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] at @s run function daisukes:modifiers/heartbound/crumble
kill @e[type=minecraft:interaction,tag=daisukes.heart_hit]
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] at @s positioned ~ ~0.505 ~ run function daisukes:modifiers/heartbound/unheart
tag @a remove daisukes.heart_bound
scoreboard objectives remove daisukes.heart
scoreboard objectives remove daisukes.heart_t
scoreboard objectives remove daisukes.heart_l
scoreboard objectives remove daisukes.heart_s
data remove storage daisukes:heart s
data remove storage daisukes:heart b
data remove storage daisukes:heart t
