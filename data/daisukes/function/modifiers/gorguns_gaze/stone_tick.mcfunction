scoreboard players remove @s daisukes.petrified 1
particle minecraft:dust{color:[0.56,0.58,0.56],scale:1.0} ~ ~1 ~ 0.25 0.55 0.25 0 2
execute if score @s daisukes.petrified matches ..0 run function daisukes:modifiers/gorguns_gaze/stone_end
