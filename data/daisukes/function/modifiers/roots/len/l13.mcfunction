scoreboard players set @s daisukes.roots_l 13
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.0563f, -0.0563f, 0f], scale: [0.1125f, 0.1125f, 1.875f]}}
execute unless entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/taut
