scoreboard players remove @s daisukes.heart_t 1
# 2 s abans, un cruixit fluix a l'esquena
execute if score @s daisukes.heart_t matches 40 rotated ~ 0 positioned ^ ^ ^-8 run playsound minecraft:entity.creaking.ambient hostile @s ~ ~ ~ 0.6 0.9
execute if score @s daisukes.heart_t matches ..0 run function daisukes:modifiers/heartbound/bind
