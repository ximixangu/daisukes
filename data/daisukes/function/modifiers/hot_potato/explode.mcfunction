execute at @e[type=item_display,tag=daisukes.potato2] run function daisukes:modifiers/hot_potato/boom
kill @e[type=item_display,tag=daisukes.potato2]
tag @a remove daisukes.potato2_holder
tag @e[tag=daisukes.potato2_holder] remove daisukes.potato2_holder
bossbar set daisukes:potato players

# Treva de 5 s i torna a sortir
scoreboard players set #phase daisukes.potato2 0
scoreboard players set #time daisukes.potato2 100
