# Com a cada creaking. La seva capsa de cops (una interaction una mica mes gran que ell) hi va; si algu l'ha picada,
# tremola. El creaking es invulnerable: els cops no li arriben (ni la llum vermella, ni l'empenta, ni particules).
# Sense amo (d'abans), res: el treu "second"
execute unless score @s daisukes.heart matches 1.. run return 0
scoreboard players operation #o daisukes.heart = @s daisukes.heart
scoreboard players set #box daisukes.heart 0
scoreboard players set #hit daisukes.heart 0
execute as @e[type=minecraft:interaction,tag=daisukes.heart_hit] if score @s daisukes.heart = #o daisukes.heart run function daisukes:modifiers/heartbound/box
execute if score #box daisukes.heart matches 0 run function daisukes:modifiers/heartbound/box_new
execute if score #hit daisukes.heart matches 1 unless score @s daisukes.heart_s matches 1.. run function daisukes:modifiers/heartbound/twitch
execute if score @s daisukes.heart_s matches 1.. run function daisukes:modifiers/heartbound/shake
