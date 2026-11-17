# Com a un creaking que desapareix: fora la seva capsa de cops
scoreboard players operation #o daisukes.heart = @s daisukes.heart
execute as @e[type=minecraft:interaction,tag=daisukes.heart_hit] if score @s daisukes.heart = #o daisukes.heart run function daisukes:modifiers/heartbound/remove
