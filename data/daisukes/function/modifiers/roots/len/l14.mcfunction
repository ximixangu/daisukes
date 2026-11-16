scoreboard players set @s daisukes.roots_l 14
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.05f, -0.05f, 0f], scale: [0.1f, 0.1f, 2f]}}
execute unless entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/taut
