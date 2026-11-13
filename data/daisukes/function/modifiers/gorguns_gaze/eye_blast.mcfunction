# Esclat: qui estigui mirant la mirada queda petrificat
tag @s add daisukes.gorgun_now
execute as @a[gamemode=!spectator,distance=..48] at @s run function daisukes:modifiers/gorguns_gaze/look_check
tag @s remove daisukes.gorgun_now

# Onda expansiva on hi havia els ulls
data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,-0.55f,0f],scale:[4.4f,4.4f,4.4f]}}
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..48] ~ ~ ~ 0.9 1.7
playsound minecraft:entity.ender_eye.death hostile @a[distance=..48] ~ ~ ~ 1.5 0.6
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force
particle minecraft:glow ~ ~ ~ 0.3 0.3 0.3 0.4 30 force
execute facing entity @p eyes run function daisukes:modifiers/gorguns_gaze/ring_1
