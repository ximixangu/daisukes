# Les cues s'encongeixen fins a desapareixer (leftovers les treu del tot en menys d'1 s)
execute as @e[type=minecraft:block_display,tag=daisukes.sn_seg] run function daisukes:modifiers/snake/seg/retire
tag @a remove daisukes.sn_on
tag @a remove daisukes.sn_me
scoreboard objectives remove daisukes.sn
scoreboard objectives remove daisukes.sn_id
scoreboard objectives remove daisukes.sn_seq
scoreboard objectives remove daisukes.sn_len
scoreboard objectives remove daisukes.sn_x
scoreboard objectives remove daisukes.sn_y
scoreboard objectives remove daisukes.sn_z
scoreboard objectives remove daisukes.sn_dim
scoreboard objectives remove daisukes.sn_cd
scoreboard objectives remove daisukes.sn_t
scoreboard objectives remove daisukes.sn_dead
scoreboard objectives remove daisukes.sn_cake
data remove storage daisukes:snake config
data remove storage daisukes:snake pos
data remove storage daisukes:snake push
