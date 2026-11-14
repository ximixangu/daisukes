# Com a corona amb musica pendent (king_fx: ticks que queden): fanfarra de coronacio o marxa funebre
scoreboard players remove @s daisukes.king_fx 1
execute if entity @s[tag=daisukes.king_fanfare] run function daisukes:modifiers/king/sound/fanfare
execute if entity @s[tag=daisukes.king_dirge] run function daisukes:modifiers/king/sound/dirge
execute if score @s daisukes.king_fx matches ..0 run tag @s remove daisukes.king_fanfare
execute if score @s daisukes.king_fx matches ..0 run tag @s remove daisukes.king_dirge
