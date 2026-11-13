# S'obren els ulls (com una parpella) en 6 ticks
data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{translation:[0f,-0.3f,0f],scale:[2.4f,2.4f,2.4f]}}
playsound minecraft:block.trial_spawner.ominous_activate hostile @a[distance=..48] ~ ~ ~ 0.8 1.4
playsound minecraft:entity.ender_eye.launch hostile @a[distance=..48] ~ ~ ~ 1.2 0.6
particle minecraft:glow ~ ~ ~ 0.6 0.2 0.1 0.02 12 force
