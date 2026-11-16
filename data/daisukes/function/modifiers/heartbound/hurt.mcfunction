# Com al creaking que han colpejat (no li ha fet res): el seu cor es queixa i unes particules taronja hi volen
execute store result score #o daisukes.heart run scoreboard players get @s daisukes.heart
data remove storage daisukes:heart t
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] if score @s daisukes.heart = #o daisukes.heart at @s positioned ~ ~0.505 ~ run function daisukes:modifiers/heartbound/clue
execute if data storage daisukes:heart t.pos run function daisukes:modifiers/heartbound/trail with storage daisukes:heart t
