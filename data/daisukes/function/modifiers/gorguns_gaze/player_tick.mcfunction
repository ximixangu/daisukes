# Jugador nou (sense comptador): comença a comptar
execute unless score @s daisukes.gorgun matches -2147483648.. run function daisukes:modifiers/gorguns_gaze/reset_timer

scoreboard players remove @s daisukes.gorgun 1
execute if score @s daisukes.gorgun matches ..0 run function daisukes:modifiers/gorguns_gaze/spawn_eye
