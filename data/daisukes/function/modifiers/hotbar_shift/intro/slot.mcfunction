# Figura brillant amb la còpia de la casella i (comença invisible i creix)
summon item_display ~ ~ ~ {Tags:["daisukes.shift_fx","daisukes.shift_new"],billboard:"center",item_display:"gui",brightness:{block:15,sky:15},Glowing:1b,glow_color_override:13395711,teleport_duration:1,interpolation_duration:2,transformation:{translation:[0f,-0.42f,-1.6f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}
$scoreboard players set @e[type=item_display,tag=daisukes.shift_new,limit=1] daisukes.shift $(i)
scoreboard players operation @e[type=item_display,tag=daisukes.shift_new,limit=1] daisukes.shift_uid = @s daisukes.shift_uid
$item replace entity @e[type=item_display,tag=daisukes.shift_new,limit=1] contents from entity @s hotbar.$(i)
tag @e[type=item_display,tag=daisukes.shift_new] remove daisukes.shift_new
