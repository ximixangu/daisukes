scoreboard players set @s daisukes.roots_l 12
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.0625f, -0.0625f, 0f], scale: [0.125f, 0.125f, 1.75f]}}
execute unless entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/taut
