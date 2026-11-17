# Fora claus, rellotges, atributs, brillantor, barres, scoreboards i storage
execute as @e[type=minecraft:item_display,tag=daisukes.cw] run function daisukes:modifiers/clockwork/remove
execute as @a[tag=daisukes.cw_has] run function daisukes:modifiers/clockwork/clear
execute as @a[tag=daisukes.cw_frozen] run function daisukes:modifiers/clockwork/unfreeze
tag @a remove daisukes.cw_me
tag @a remove daisukes.cw_wound
tag @a remove daisukes.cw_ding
scoreboard players operation #i daisukes.cw = #ids daisukes.cw
execute if score #i daisukes.cw matches 1.. run function daisukes:modifiers/clockwork/bars_off
scoreboard objectives remove daisukes.cw
scoreboard objectives remove daisukes.cw_s
scoreboard objectives remove daisukes.cw_y
scoreboard objectives remove daisukes.cw_h
scoreboard objectives remove daisukes.cw_o
scoreboard objectives remove daisukes.cw_t
scoreboard objectives remove daisukes.cw_v
scoreboard objectives remove daisukes.cw_k
scoreboard objectives remove daisukes.cw_c
scoreboard objectives remove daisukes.cw_l
scoreboard objectives remove daisukes.cw_wk
scoreboard objectives remove daisukes.cw_sr
scoreboard objectives remove daisukes.cw_sw
scoreboard objectives remove daisukes.cw_j
data remove storage daisukes:clockwork n
data remove storage daisukes:clockwork pitch
data remove storage daisukes:clockwork lift
data remove storage daisukes:clockwork cfg
