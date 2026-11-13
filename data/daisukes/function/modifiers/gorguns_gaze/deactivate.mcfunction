kill @e[type=minecraft:text_display,tag=daisukes.gorgun_eye]
kill @e[type=minecraft:marker,tag=daisukes.gorgun_probe]
execute as @a[scores={daisukes.petrified=1..}] run function daisukes:modifiers/gorguns_gaze/stone_end
