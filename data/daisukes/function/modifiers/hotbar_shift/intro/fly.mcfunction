# Les figures es fonen cap a la hotbar
execute as @e[type=item_display,tag=daisukes.shift_fx] run data merge entity @s {interpolation_duration:8,start_interpolation:0,transformation:{translation:[0f,-1.1f,-0.9f],scale:[0f,0f,0f]}}
execute as @a at @s run playsound minecraft:entity.illusioner.mirror_move master @s ~ ~ ~ 0.7 1.3
