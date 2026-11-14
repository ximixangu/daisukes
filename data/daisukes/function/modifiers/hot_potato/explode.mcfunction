execute at @e[type=item_display,tag=daisukes.potato] run function daisukes:modifiers/hot_potato/boom
kill @e[type=item_display,tag=daisukes.potato]
tag @a remove daisukes.potato_holder
tag @e[tag=daisukes.potato_holder] remove daisukes.potato_holder
bossbar set daisukes:potato players

# Treva de 5 s i torna a sortir
scoreboard players set #phase daisukes.potato 0
scoreboard players set #time daisukes.potato 100
