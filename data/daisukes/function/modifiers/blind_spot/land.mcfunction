# Toca terra: bufada i cop sec (la carrega de sota s'arma en 1 s)
particle minecraft:poof ~ ~0.15 ~ 0.25 0.05 0.25 0.03 8 force @a[distance=..48]
particle minecraft:lava ~ ~0.1 ~ 0.1 0 0.1 0 2 force @a[distance=..48]
playsound minecraft:block.gravel.place block @a ~ ~ ~ 0.7 0.7
# La TNT s'encongeix cap a terra i desapareix
tag @s remove daisukes.bspot_seed
tag @s add daisukes.bspot_dust
scoreboard players set @s daisukes.bspot_fx 6
data merge entity @s {start_interpolation: 0, interpolation_duration: 5, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
