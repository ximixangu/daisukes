scoreboard players add @s daisukes.gorgun 1

# Ticks relatius a l'esclat (0 = esclat, negatiu = abans)
scoreboard players operation #rel daisukes.gorgun = @s daisukes.gorgun
scoreboard players operation #rel daisukes.gorgun -= #windup daisukes.gorgun

# Al tick 2 (no al 1) perque el client ja tingui l'entitat i la interpolacio es vegi
execute if score @s daisukes.gorgun matches 2 run function daisukes:modifiers/gorguns_gaze/eye_open
execute if score #rel daisukes.gorgun matches ..-1 run function daisukes:modifiers/gorguns_gaze/eye_charge
execute if score #rel daisukes.gorgun matches -20 run function daisukes:modifiers/gorguns_gaze/eye_warn
execute if score #rel daisukes.gorgun matches -8..-1 run function daisukes:modifiers/gorguns_gaze/eye_flicker

execute if score #rel daisukes.gorgun matches 0 run function daisukes:modifiers/gorguns_gaze/eye_blast
execute if score #rel daisukes.gorgun matches 1 facing entity @p eyes run function daisukes:modifiers/gorguns_gaze/ring_2
execute if score #rel daisukes.gorgun matches 2 facing entity @p eyes run function daisukes:modifiers/gorguns_gaze/ring_3
execute if score #rel daisukes.gorgun matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{translation:[0f,0f,0f],scale:[0.01f,0.01f,0.01f]}}
execute if score #rel daisukes.gorgun matches 5.. run kill @s
