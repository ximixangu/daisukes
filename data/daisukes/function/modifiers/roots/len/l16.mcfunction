scoreboard players set @s daisukes.roots_l 16
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.045f, -0.045f, 0f], scale: [0.09f, 0.09f, 2.25f]}}
execute unless entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/taut
