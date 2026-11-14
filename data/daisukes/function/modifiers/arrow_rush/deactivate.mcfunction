# Barres de dalt (daisukes:rush_1 ... _#ids), caixes de clic, etiquetes i titols
execute if score #ids daisukes.rush matches 1.. run function daisukes:modifiers/arrow_rush/unbar
kill @e[type=minecraft:interaction,tag=daisukes.rush_box]
tag @a remove daisukes.rush_forward
tag @a remove daisukes.rush_left
tag @a remove daisukes.rush_backward
tag @a remove daisukes.rush_right
tag @a remove daisukes.rush_jump
tag @a remove daisukes.rush_sneak
tag @a remove daisukes.rush_clicked
# Fora el que hi hagi al centre i temps dels titols com els deixa el pack en carregar
execute as @a[scores={daisukes.rush=1..}] run title @s clear
execute as @a[scores={daisukes.rush=..-1}] run title @s clear
title @a times 5t 3s 2s
scoreboard objectives remove daisukes.rush
scoreboard objectives remove daisukes.rush_tm
scoreboard objectives remove daisukes.rush_a
scoreboard objectives remove daisukes.rush_k
scoreboard objectives remove daisukes.rush_n
scoreboard objectives remove daisukes.rush_id
scoreboard objectives remove daisukes.rush_d
scoreboard objectives remove daisukes.rush_l
data remove storage daisukes:rush p
data remove storage daisukes:rush tmp
data remove storage daisukes:rush gen
data remove storage daisukes:rush arg
data remove storage daisukes:rush first
