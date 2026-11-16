# Com al creaking nou: el seu amo, i un 50 % mes de velocitat i de mal que un de normal
scoreboard players operation @s daisukes.heart = #me daisukes.heart
attribute @s minecraft:movement_speed modifier add daisukes:heartbound 0.2 add_multiplied_base
attribute @s minecraft:attack_damage modifier add daisukes:heartbound 0.5 add_multiplied_base
tag @s remove daisukes.heart_new
