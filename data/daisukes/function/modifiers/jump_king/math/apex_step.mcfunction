scoreboard players operation #y daisukes.jk += #w daisukes.jk
scoreboard players operation #w daisukes.jk -= @s daisukes.jk_g
scoreboard players operation #w daisukes.jk *= #98 daisukes.jk
scoreboard players operation #w daisukes.jk /= #100 daisukes.jk
scoreboard players add #i daisukes.jk 1
execute if score #w daisukes.jk matches 1.. if score #i daisukes.jk matches ..299 run function daisukes:modifiers/jump_king/math/apex_step
