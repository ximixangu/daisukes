# Cada segon (core/leftovers), nomes si Heartbound no esta actiu: el que era en chunks sense carregar
execute if data storage daisukes:state {active: ["heartbound"]} run return 0
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] at @s run function daisukes:modifiers/heartbound/vanish
kill @e[type=minecraft:interaction,tag=daisukes.heart_hit]
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] at @s positioned ~ ~0.505 ~ run function daisukes:modifiers/heartbound/unheart
tag @a[tag=daisukes.heart_bound] remove daisukes.heart_bound
